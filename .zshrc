plugins=(git)

alias ssh-term='ssh -i ~/.ssh/id_rsa_minseop minseop@kr-term.dable.io'
alias ssh-batch='ssh -i ~/.ssh/dable.id_rsa ubuntu@batch.dable.io'
alias ssh-ctr-slave='ssh -i ~/.ssh/emr.pem ubuntu@172.31.34.214'

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

PYTHONPATH="/Users/minseop/minseop-dable/airflow-practice/airflow/utils/:$PYTHONPATH"

ZSH_THEME="agnoster"

export PATH=:"${PATH}:${PYTHONPATH}:${PYENV}:${HOME}/bin:${OPENSSL_HOME}/bin"


export ZSH="/Users/minseop/.oh-my-zsh"

export PYENV="/Users/minseop/.pyenv"

#for openSSL
export OPENSSL_HOME="/usr/local/opt/openssl@1.1"
export CPPFLAGS="-I$(brew --prefix openssl)/include"
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

#ssh-add
ssh-add ~/.ssh/id_rsa_minseop
ssh-add ~/.ssh/dable.id_rsa
#echo '3702\n' |	ssh-add ~/.ssh/ms_git/id_rsa
#echo '3702\n' | ssh-add ~/.ssh/ms-dable_git/id_rsa

#tensorflow
export TF_CPP_MIN_LOG_LEVEL=2

export DYLD_LIBRARY_PATH="/usr/local/opt/openssl@1.1/lib:$DYLD_LIBRARY_PATH"

#airflow
export AIRFLOW_HOME="~/minseop-dable/airflow-practice/airflow"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

















source $ZSH/oh-my-zsh.sh

