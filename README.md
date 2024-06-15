I'm setting up a new Mac. I'm using this Gist to keep track of the software I install (roughly in order, in case it's useful later.

## Apps

- [iTerm2](http://www.iterm2.com/)

## Basic Development Setup

- [Homebrew](http://brew.sh/)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

- [Oh-My-Zsh](https://ohmyz.sh/)

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


```

```sh
# Apps
brew install git vlc iterm2 tree libreoffice

```

```sh
# Fixes for PIL, matplotlib, etc.
brew install jpeg
brew install libpng
brew install freetype
rm /usr/local/lib/libpng16.16.dylib
ln -s /usr/X11/lib/libpng15.dylib /usr/local/lib/libpng16.16.dylib
```

```sh
# For SciPy, ODBC, etc.
brew install fortran
brew install unixodbc
brew install gdal
```

```sh
# Haskell and pandoc
brew install haskell-platform
brew install cabal
cabal update
cabal install pandoc
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

## Vim

```sh
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/mikewest/vimroom.git
git clone https://github.com/plasticboy/vim-markdown
```
