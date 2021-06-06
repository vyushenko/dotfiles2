#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

brew install tmux
brew install pygments

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed #--with-default-names
# Install a modern version of Bash.
#brew install bash
#brew install bash-completion2

# Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#  chsh -s "${BREW_PREFIX}/bin/bash";
#fi;

# Install `wget` with IRI support.
brew install wget #--with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# WiFi Security
#brew install aircrack-ng
# Remove large files from git commits
brew install bfg
#brew install binutils
# Analyzing formware
#brew install binwalk
#brew install cifer
#brew install dex2jar
# Send TCP traffic over DNS (penetration testing)
#brew install dns2tcp
# Password cracker
#brew install fcrackzip
# Recover deleted files
brew install foremost
# Tool to break hasing of passwords
#brew install hashpump
# Pentration testing
#brew install hydra
# Find weak passwords
#brew install john
# Adding a sequence that will allow network traffic (secret knock)
#brew install knock
# Image manipulation
#brew install netpbm
# Port scanning, OS detection - basically to find everything on the network
brew install nmap
# Check image file
#brew install pngcheck
# Socat is a command line based utility that establishes two bidirectional byte streams and transfers data between them.
# Can be used as a proxy - proxying recieved data on one port to another, or keyboard to a TCP stream
#brew install socat
# SQL injection tester
#brew install sqlmap
# Captures TCP traffic
#brew install tcpflow
# Replay captured TCP traffic
#brew install tcpreplay
# Shows bettr summaries of captured TCP data
#brew install tcptrace
# Building client-server apps
#brew install ucspi-tcp # `tcpserver` etc.
# PDF viwer
#brew install xpdf
# Data compression
#brew install xz

# Install other useful binaries.
# Better grep for developers
brew install ack
#brew install exiv2
brew install git
# Allows storing large files in git where omly pointer is stored and file is in github.com
brew install git-lfs
# PostScript viewer - data
#brew install gs
#brew install imagemagick --with-webp
#brew install lua
# Command line browser
#brew install lynx
#brew install p7zip
# Compressor
#brew install pigz
# Monitors piping of the data between processes and shows stats
brew install pv
#brew install rename
#brew install rlwrap
# Installs ssh jey on the server
brew install ssh-copy-id
brew install tree
# Binary diff
brew install vbindiff
# Compression
#brew install zopfli


brew install brotli
# Remove outdated versions from the cellar.
brew cleanup
