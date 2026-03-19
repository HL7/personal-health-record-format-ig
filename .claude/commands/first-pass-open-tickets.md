---
description: Scan all open JIRA tickets, assess the current state of the IG, and produce a prioritized planning summary.
allowed-tools: Read, Glob, Grep, Bash(git branch), Bash(git log), Bash(curl to fetch JIRA tickets), WebFetch, Task, Write
---

# First Pass: Open Tickets Assessment

Scan all JIRA tickets for the PHR IG and produce a prioritized planning assessment.

## Step 1: Read Current State

Do the following in parallel:

1. Read `JIRA-TODO.md` for the full ticket list and statuses
2. Read `JIRA.md` for additional context and workgroup notes
3. Read `sushi-config.yaml` for current page structure
4. Run `git branch -a` to find existing JIRA-named branches
5. List all files in `input/pagecontent/` to understand existing content

## Step 2: Check Existing Branch Work

For each JIRA-named branch found in Step 1:
- Run `git log master..<branch> --oneline` to see what commits exist
- Note whether the branch has work or is empty

## Step 3: Fetch Ticket Details

For each OPEN ticket (status `[ ]` or `[?]`), fetch via the JIRA mobile API using curl:
```bash
curl -s -H "Cookie: JSESSIONID=...; seraph.rememberme.cookie=...; atlassian.xsrf.token=..." \
  -H "Accept: application/json" \
  -H "X-Requested-With: XMLHttpRequest" \
  -H "Referer: https://jira.hl7.org/plugins/servlet/mobile" \
  -H "User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36" \
  "https://jira.hl7.org/rest/mobile/1.0/issue/<TICKET_ID>?expand=renderedFields,names"
```

**Note:** The standard JIRA API (`/rest/api/2/`) returns 403 from non-browser IPs. The mobile endpoint works.
Session cookies expire - if fetching fails, ask the user to provide fresh cookies from their browser
DevTools (Network tab > any JIRA request > Cookie header). Only need JSESSIONID, seraph.rememberme.cookie,
and atlassian.xsrf.token.

Extract: summary, description, status, priority, and key comments.
If fetching fails entirely, use whatever context exists in JIRA-TODO.md / JIRA.md.

## Step 4: Categorize All Tickets

Organize every ticket by:

### By Status
- **OPEN** - no branch, no work started
- **IN-PROGRESS** - branch exists with commits
- **BLOCKED** - waiting on external dependencies
- **COMPLETED** - already merged
- **DEFERRED** - pushed to future cycle
- **WONT-FIX** - non-persuasive
- **TBD** - needs discussion

### By Complexity
- **Easy** - text additions to existing pages
- **Medium** - new content sections, examples, or documentation
- **Hard** - new FSH profiles, terminology, or structural changes
- **Stretch** - logical models or major refactoring

### By Type
- **Content** - markdown page changes only
- **Profile** - FSH profile/valueset/codesystem changes
- **Structure** - sushi-config.yaml, page organization, menu changes
- **Mixed** - combination of the above

## Step 5: Produce Planning Summary

Output a structured report:

```
# PHR IG - Open Tickets Planning Assessment
# Generated: <today's date>
# Current branch: <branch>
# Last master commit: <hash> <message>

## Summary Statistics
- Total tickets: N
- Open: N | In-Progress: N | Blocked: N
- Completed: N | Deferred: N | Won't Fix: N

## Recommended Processing Order

### Batch 1: Quick Wins (Easy, Content-only)
1. FHIR-XXXXX - <title> - <files affected>

### Batch 2: Medium Complexity
...

### Batch 3: Requires External Input
...

### Batch 4: Structural / Hard
...

### Not Recommended for This Cycle
...

## Per-Ticket Analysis

### FHIR-XXXXX - <title>
- **Status:** OPEN
- **Complexity:** Easy
- **Type:** Content
- **Files:** input/pagecontent/index.md
- **Current state:** <what exists now>
- **What's needed:** <summary of ticket request>
- **Approach:** <brief proposed approach>
- **Dependencies:** None
```

## Step 6: Suggest Next Steps

After the assessment, recommend:
1. Which ticket to start with (easiest unblocked ticket)
2. Whether any tickets should be grouped together
3. Any tickets needing workgroup discussion before proceeding
4. Suggest running `/address-jira-ticket <TICKET_ID>` for the recommended first ticket
