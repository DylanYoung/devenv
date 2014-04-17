
WORKON_HOME=$HOME/.virtualenv
 
if [ ! -d "$WORKON_HOME" ]; then
 
  pip install virtualenvwrapper
  export WORKON_HOME=$WORKON_HOME
  mkdir -p $WORKON_HOME
  source /usr/local/bin/virtualenvwrapper.sh
  echo 'source /usr/local/bin/virtualenvwrapper.sh' >> $HOME/.bashrc
 
fi

