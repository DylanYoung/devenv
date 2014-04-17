#!/bin/bash

RBENV_DIR=$HOME/.rbenv

if [ ! -d "$RBENV_DIR" ]; then
  
    git clone https://github.com/sstephenson/rbenv.git $RBENV_DIR
    echo 'export PATH="$RBENV_DIR/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    git clone https://github.com/sstephenson/ruby-build.git $RBENV_DIR/plugins/ruby-build

fi
