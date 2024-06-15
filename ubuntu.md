I'm setting up a new Mac. I'm using this Gist to keep track of the software I install (roughly in order, in case it's useful later.

## Apps

- [iTerm2](http://www.iterm2.com/)

## Basic Development Setup

## GIT

```sh
sudo apt install git
```

## APPS

```sh
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev dirmngr gnupg apt-transport-https ca-certificates redis-server redis-tools
```

## ZSH
```sh
sudo apt install zsh
```

- [Oh-My-Zsh](https://ohmyz.sh/)

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```

## SSH Key Generation

```sh
ssh-keygen -t rsa -C "jromussi@gmail.com"
ssh-add ~/.ssh/id_rsa
```

- [Add SSH key to GitHub account](https://github.com/settings/ssh).

## Ruby

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

```sh
# Add to ~/.bashrc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

```sh
LATEST_RUBY_VERSION=$(rbenv install -l | grep -E "^[0-9\. ]*(-p[0-9]*)?$" | tail -n 1)
rbenv install $LATEST_RUBY_VERSION
rbenv global $LATEST_RUBY_VERSION
gem install bundle
```

## JavaScript / Node

```sh
git clone https://github.com/nvm-sh/nvm.git ~/.nvm
```

```sh
nvm install node # "node" is an alias for the latest version
nvm use node
```