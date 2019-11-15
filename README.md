# dotfiles

> this repo is for quick system setup

## Preparation

To setup these settings, you need to install the GNU stow and git first, it is a tool that helps a lot!
Which support fast config link.

- on Arch or Manjaro Linux
  - `sudo pacman -S stow git`

- on Mac
  - first install Homebrew from [brew.sh](https://brew.sh/)
  - then `brew install stow git`
  
## How to Use 

1. `cd $HOME`
2. `git clone git@github.com:amdgigabyte/dotfiles.git`
3. `cd dotfiles`
4. `stow FOLDER_OF_CONFIG_FILE` eg: `stow zsh`, then stow will by default link the ./zsh/.zshrc to ../.zshrc (which is ~/.zshrc)

## TODO

- [ ] add different platform support(MacOS & Linux)
