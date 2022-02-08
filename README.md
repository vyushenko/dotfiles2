# Opinionated set of dotfiles

THis set of files is to be used with zsh and [Oh My Zsh](https://ohmyz.sh/) framework

## Zsh configuration files

Zsh uses the following files to set-up it's enviroment
* .zshenv - always sourced. Often set's up $PATH, $EDITOR. This repo has a custom version that sources `.path`, `.exports`, `.extra_local` files
  * .path - sets the path
  * .exports - exports simple env variables to control editor, cmd history ad similar things
  * .extra_local - export git information
* .zprofile - loaded first during interactive login. Not provided by this repo.
* .zshrc - loaded next during interactive login. This repo overrides the default .zshrc, generated by oh my zsh. It configures a different default theme and adds several extensions
* .zlogin - loaded last during interactive login. Not provided by this repo.
* .zlogout - called when exiting. Not provided by this repo.

## Installation

To install run files in the order of:

```zsh
./brew.sh
./macos
./bootstrap
```

## Special Commands

* ccat - colorized cat
* cless - colorized less
* ta - tmux attach -t
* tl - tmux list-sessions


### Support for multiple github accounts

[From](https://dev.to/sammm/setting-up-multiple-github-accounts-on-the-same-computer-without-having-to-change-the-repo-url-1007)

Add following to `~/.ssh/config`

```sh
  Host github.com
    HostName github.com
    User git
    IdentitiesOnly yes
    AddKeysToAgent yes
    UseKeychain yes

  Match Host github.com !exec "pwd | grep '/COMPANY' > /dev/null"
    IdentityFile ~/.ssh/id_rsa

  Match Host github.com exec "pwd | grep '/COMPANY' > /dev/null"
    IdentityFile ~/.ssh/id_rsa_$COMPANY
```

Add following to `~/.gitconfig`

```sh
# ~/.gitconfig
[user]
email = your.email@example.com
name = your-user-name
[user]
email = your.email@example.com
name = your-user-name
[includeIf "gitdir:~/PATH/TO/WORK/DIR/RELATIVE/TO/ROOT"]
    path = ~/PATH/TO/WORK/DIR/RELATIVE/TO/ROOT/.gitconfig
```