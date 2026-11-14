Open a pull request for the current branch.

1. Run `git status` and `git branch --show-current`.
   - If on the default branch, stop and ask for a branch name.
   - If there are uncommitted changes, stop and suggest `/commit` first.
2. Find the base branch (`gh repo view --json defaultBranchRef -q .defaultBranchRef.name`) and review `git log <base>..HEAD` and `git diff <base>...HEAD`.
3. Draft a short title and a body with these sections, in order:
   - **Steps for you** — only if the reviewer must do something (run a migration, set a secret, test by hand). Omit otherwise.
   - **Why** — the problem or motivation.
   - **What changed** — a brief summary, not a file list.
   - **Proof** — evidence it works: test output (for bug fixes, the test failing before and passing after), command output, or before/after screenshots. Before/after numbers for any performance or cost claim. For removals, the searches showing nothing uses the code.
   - **Performance & compatibility** — does it affect performance? Is it additive or breaking?
   - **Review** — what review was done (subagent review, `/code-review`, manual QA) and anything left open.
   - **Risk and rollback** — what could go wrong and how to undo it.
4. Present the title and body for approval.
5. Once approved, push with `git push -u origin HEAD`, then create the PR with `gh pr create --title "<title>" --body-file <file>`. Write the body to a temp file first so markdown survives quoting.
6. Show the PR URL. Do NOT merge. Do NOT force-push.
