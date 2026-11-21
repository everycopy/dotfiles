# Global Rules

## Communication

- Be concise and direct
- Plan first — share work plan before coding complex features
- Never commit or push unless explicitly asked
- For risky or destructive actions, stop and ask — for low-risk ones, use best judgement

## Git Safety

- NEVER run destructive git operations (`git reset --hard`, `rm`, `git checkout`/`git restore` to older commit) unless explicitly instructed — treat these as catastrophic
- Always check `git status` before any commit
- Keep commits atomic: only touched files, listed explicitly
- Use `git commit -m "<message>" -- path/to/file1 path/to/file2` for tracked files
- Quote paths containing brackets or parentheses to prevent shell globbing
- When rebasing, use `GIT_EDITOR=:` to avoid opening editors
- Never amend commits without explicit approval
- Never use `git restore` to revert files you didn't author

## Tech Stack

- Full-stack: Ruby/Rails + JavaScript/TypeScript
- Runtime management: mise (formerly rtx/asdf)
- Package management: Homebrew
- GitHub: use `gh` CLI for PRs, issues, checks

## Environment

- Platform: macOS, zsh, Homebrew
- Editor: Zed (`zed`)
- Terminal: Ghostty
- NEVER edit `.env` or environment variable files (`.env.example` is fine — placeholders only, no secrets)

## Testing

- Write tests for new code
- Run the test suite before considering work done
- Never declare something done without evidence — show test output, a screenshot, or command output
- For bug fixes, write a test that fails before the fix and passes after; show both runs
- Check the project CLAUDE.md for the specific test runner and conventions

## iOS / Xcode

- Simulators are named `<Project> - <Who>` (e.g. `Rummage - Claude`, `Rummage - Agent 2`) so it's obvious which is whose. Stock ones (`iPhone 17` etc.) are mine for manual use — don't build or test on them
- Reuse your simulator if it exists (`xcrun simctl list devices | grep "<Project> - "`), else create it: `xcrun simctl create "<Project> - Claude" "iPhone 17" <runtime>`; give each delegated agent its own and delete it when the agent's done
- Target by name: `-destination 'platform=iOS Simulator,name=<Project> - Claude'`; only shut down or erase your own simulators, never `simctl shutdown all`

## CLAUDE.md Maintenance

- Keep project CLAUDE.md files short — cut any line that wouldn't prevent a real mistake if deleted
- When corrected on something non-obvious, ask whether it should be added to CLAUDE.md instead of just fixing it silently
- Use a "Gotchas" section for one-off lessons learned (a bug's root cause, a footgun, a workaround)
- Use CLAUDE.local.md for personal preferences that shouldn't apply to the whole team

## Skills & Subagents

- If a task gets done more than once, consider proposing a skill for it
- For larger changes, prefer a separate review subagent (read-only tools) over self-review in the same session
- After fixing review findings, re-review only the fix diff, not the whole change. Stop after 3 rounds and report what's still open
- When delegating, pick a Paseo agent profile by its notes and say which one you picked and why; if none fit: high effort for research, design and hard debugging, medium for routine building, low for mechanical chores. If a delegated task turns out harder than its profile, raise its thinking level rather than letting it struggle

## Code Style

- Keep it simple — no over-engineering
- Delete dead code, don't comment it out
- Build it yourself before reaching for dependencies
