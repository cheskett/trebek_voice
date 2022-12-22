#!/usr/bin/env bash
################################################################################
# pyenv + virtualenv install script for debian/ubuntu linux
# system requirements: https://github.com/pyenv/pyenv/wiki#suggested-build-environment
# Install pyenv using,
#  $ bash pyenv_install.sh
#
# Then install your preferred version of python using,
#  $ pyenv install 3.7.4 -s -v
#  $ pyenv global 3.7.4
################################################################################

if [ ! -r ~/.pyenv/ ]
then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
    echo '
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)" # Enable auto-activation of virtualenvs
fi' >> ~/.bashrc
    source ~/.bashrc
    exec "$SHELL"
fi