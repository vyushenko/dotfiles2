# Opinionated set of dotfiles

Uses zsh and [Oh My Zsh](https://ohmyz.sh/) framework


## Installation

Start by installing
 - XCode
 - iTerm2
 - [Oh My Zsh](https://ohmyz.sh/)
 - [SDKMan](https://sdkman.io/install) - not really used
 - [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)
 - [brew](https://brew.sh/) and run commands that are printed at the end of install scripts

 Then clone this repo and run: `init.sh`, `brew.sh`, `bootstrap.sh`. Relaunch terminal window.

### Java Installation

> from https://stackoverflow.com/questions/66579113/how-to-change-java-version-in-mac-os

Verify that jenv installed correctly `jenv doctor`
Manually install required JDKs
Check which versions are already installed `/usr/libexec/java_home -V`
Add each version to jenv, example `jenv add /Library/Java/JavaVirtualMachines/openjdk-14.0.1.jdk/Contents/Home`
Check which version are avialable `jenv versions`
Set global version `jenv global 1.7`
Enable plugin to set JAVA_HOME
```sh
 # ensure that JAVA_HOME is correct
  jenv enable-plugin 

  jenv enable-plugin maven
  jenv enable-plugin gradle
```

Open new command prompt and chekc that righ version of java is installed

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

And run `ssh-add ~/.ssh/id_rsa_$COMPANY` before use

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