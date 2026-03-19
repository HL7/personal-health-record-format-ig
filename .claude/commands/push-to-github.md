---
description: Commit changes and push the current JIRA ticket branch to GitHub. Creates branch if needed, writes descriptive commit message with JIRA link.
allowed-tools: Bash, Read, Edit, AskUserQuestion
---

# Push to GitHub

You are pushing PHR IG changes for a JIRA ticket to GitHub.

## Step 1: Determine the JIRA Ticket

If `$ARGUMENTS` is provided and matches `FHIR-\d+`, use that as the ticket ID.

Otherwise, check the current branch name:
```
git branch --show-current
```

If the branch name matches `FHIR-\d+`, use that. Otherwise, ask the user which JIRA ticket this work relates to.

## Step 2: Review Changes

Run in parallel:
- `git status` to see all changes
- `git diff --stat` to see a summary
- `git diff` to see the actual changes

Summarize for the user:
- Which files were modified, added, or deleted
- A brief description of each change

## Step 3: Ensure Correct Branch

Check `git branch --show-current`.

- If on `master`: create and switch to the JIRA branch with `git checkout -b <TICKET_ID>`
- If on a branch that does NOT match the ticket ID: warn the user and ask how to proceed
- If already on the correct branch: continue

## Step 4: Stage and Commit

Stage relevant files. Do NOT stage:
- `/output/`, `/temp/`, `/template/`, `/fsh-generated/`, `/input-cache/`
- `.DS_Store`, `Thumbs.db`
- `.env` or credential files

Stage command:
```
git add input/ sushi-config.yaml JIRA-TODO.md JIRA.md
```

Also stage any other modified root-level files that are relevant (like new `.claude/` files).

Construct the commit message. Examine the changes to write a descriptive message:

```
<TICKET_ID>: <Brief description of what changed>

<Longer description mentioning specific pages/sections modified.>

JIRA: https://jira.hl7.org/browse/<TICKET_ID>
```

Example:
```
FHIR-53509: Add LifeLog use case to Getting Started page

Added new "LifeLog" use case entry to the Use Cases section of
index.md, describing the scenario of patients maintaining a
continuous life log of health activities and observations.

JIRA: https://jira.hl7.org/browse/FHIR-53509
```

Use a HEREDOC for the commit message to ensure proper formatting.

## Step 5: Push to Origin

Attempt:
```
git push origin <TICKET_ID>
```

If the push fails:
- If permission denied or authentication error: tell the user they may need to push manually
- If branch exists with different history: suggest `git push origin <TICKET_ID> --force-with-lease` but get explicit user confirmation first
- Never force push without asking

## Step 6: Report Results

After push (successful or not), report:
- Branch name
- Commit hash and message
- GitHub branch URL: `https://github.com/HL7/personal-health-record-format-ig/tree/<TICKET_ID>`
- Note: The HL7 IG auto-builder may build the branch preview. Check `https://build.fhir.org/ig/HL7/personal-health-record-format-ig/branches/` or trigger the workflow manually from GitHub Actions.
- If push failed, provide the commands the user can run manually.

## Step 7: Update Tracking

Update `JIRA-TODO.md`:
- If the ticket was `[ ]`, change to `[~]` (IN-PROGRESS)
- Ask the user if this ticket is complete. If yes, change to `[x]` (COMPLETED)
