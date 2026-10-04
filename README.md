A simple collection of configuration doodahs for making this little machine run like it's *meant* to.

```
brew install asdf zsh gh git spaceship zsh-completion zsh-autosuggestions
brew install --cask ghostty
```

Nothing here installs itself, so link it up:

```
ln -s ~/Code/dotfiles/zshrc          ~/.zshrc
ln -s ~/Code/dotfiles/gitconfig      ~/.gitconfig
ln -s ~/Code/dotfiles/gemrc          ~/.gemrc
ln -s ~/Code/dotfiles/irbrc          ~/.irbrc
ln -s ~/Code/dotfiles/agents.md      ~/.claude/CLAUDE.md
ln -s ~/Code/dotfiles/claude/commands ~/.claude/commands

mkdir -p ~/.zsh ~/.config/ghostty
ln -s ~/Code/dotfiles/zsh/functions  ~/.zsh/functions
ln -s ~/Code/dotfiles/ghostty        ~/.config/ghostty/config
```

`gitignore` and `allowed_signers` need no symlink — `gitconfig` points at them in place.

Private aliases live in `zsh/private/`, which is deliberately untracked.
