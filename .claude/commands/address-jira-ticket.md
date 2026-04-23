---
description: Plan and address a specific JIRA ticket for the PHR IG. Scans IG contents, fetches ticket info, and discusses approach before making changes.
allowed-tools: Read, Glob, Grep, WebFetch, Bash(git status), Bash(git branch), Bash(git log), Bash(git checkout), Bash(git pull), Edit, Write, Task, AskUserQuestion, EnterPlanMode
---

# Address JIRA Ticket: $ARGUMENTS

You are working on the HL7 FHIR Personal Health Records Implementation Guide.
The user wants to address a specific JIRA ticket. Work through these steps carefully.

## Step 1: Validate Input

Parse the ticket ID from `$ARGUMENTS`. It should match the pattern `FHIR-\d+`.
If no valid ticket ID is found, ask the user for the correct ID.

## Step 2: Gather Context

Do all of the following in parallel:

1. **Read JIRA-TODO.md** in the repo root. Find the entry for this ticket. Report its current status.
   If marked DEFERRED or WONT-FIX, warn the user and confirm they want to proceed.

2. **Read JIRA.md** for any additional notes or workgroup decisions about this ticket.

3. **Fetch the JIRA ticket** using curl via Bash (the standard API is blocked; use the mobile endpoint):
   ```bash
   curl -s -H "Cookie: JSESSIONID=...; seraph.rememberme.cookie=...; atlassian.xsrf.token=..." \
     -H "Accept: application/json" \
     -H "X-Requested-With: XMLHttpRequest" \
     -H "Referer: https://jira.hl7.org/plugins/servlet/mobile" \
     -H "User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36" \
     "https://jira.hl7.org/rest/mobile/1.0/issue/$ARGUMENTS?expand=renderedFields,names"
   ```
   Extract: summary, description, status, priority, comments.
   **Note:** Session cookies expire. If the fetch returns 403 or login HTML, ask the user to provide
   fresh cookies from their browser DevTools (Network tab > any JIRA request > Cookie header).
   If fetch fails entirely, rely on JIRA-TODO.md / JIRA.md context and the first-pass assessment
   in the plan file at `~/.claude/plans/immutable-chasing-lake.md`.

4. **Check for existing branch**: Run `git branch -a` and look for a branch matching the ticket ID.
   If found, check what commits exist: `git log master..<branch> --oneline`.

## Step 3: Scan the IG

Based on what the ticket asks for:

1. Read `sushi-config.yaml` to understand current page structure and menu.
2. Read the specific `input/pagecontent/*.md` files that relate to the ticket topic.
3. Search `input/fsh/` for any related profiles, examples, or value sets if the ticket involves FHIR artifacts.
4. Identify what content already exists and what gaps the ticket is pointing out.

## Step 4: Produce an Implementation Plan

Present a structured plan:

### Implementation Plan for $ARGUMENTS

1. **Ticket Summary** - plain language description of what's requested
2. **Current State** - what the IG already has related to this topic
3. **Proposed Changes** - specific files to create or modify, with descriptions
4. **Approach** - step-by-step description of edits
5. **Dependencies** - other tickets or content that must exist first
6. **Complexity** - Easy / Medium / Hard

## Step 5: Confirm with User

Ask the user:
- Does this approach look correct?
- Any modifications needed?
- Ready to proceed?

**Do NOT make any changes until the user confirms.**

## Step 6: Execute (Upon Confirmation)

1. **Create or switch to the JIRA branch:**
   ```
   git checkout master
   git pull origin master
   git checkout -b $ARGUMENTS
   ```
   Or if the branch already exists:
   ```
   git checkout $ARGUMENTS
   ```

2. **Make the planned changes** to the appropriate files.

3. **Update JIRA-TODO.md** - change the ticket status to `[~]` (IN-PROGRESS).

4. **Summarize what was changed.** Tell the user to review the changes and use `/push-to-github` when ready.

Do NOT auto-commit or push. The user will use `/push-to-github` for that.
