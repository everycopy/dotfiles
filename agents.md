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
- NEVER edit `.env` or environment variable files

## Testing
- Write tests for new code
- Run the test suite before considering work done
- Check the project CLAUDE.md for the specific test runner and conventions

## Code Style
- Keep it simple — no over-engineering
- Delete dead code, don't comment it out
- Build it yourself before reaching for dependencies
