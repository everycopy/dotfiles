Review and commit the current changes.

1. Run `git status` to check for uncommitted changes. If there are none, say so and stop.
2. If there are both staged and unstaged changes, ask which to include before proceeding.
3. Review the diff (`git diff` and/or `git diff --staged`) to understand what changed.
4. Summarize the changes briefly.
5. Generate a concise commit message and present it for approval.
6. Right before committing, re-run `git status` and `git diff --staged` to confirm nothing has changed since the review (another session may have modified the working tree). If the state has changed, stop and re-review.
7. Once approved, commit using explicit file paths: `git commit -m "<message>" -- path/to/file1 path/to/file2`
   - Quote any paths containing brackets or parentheses to prevent shell globbing.
   - Keep the commit atomic — only include the relevant changed files.
8. Do NOT push. Do NOT amend any existing commits.