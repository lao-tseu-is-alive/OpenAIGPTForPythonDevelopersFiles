echo "installing pyenv : https://github.com/pyenv/pyenv"
echo "have look on : https://realpython.com/intro-to-pyenv/"
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl
curl https://pyenv.run | bash
echo """
##### PYENV PYTHON VERSIONS SECTION
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
""" >>.bashrc
source .bashrc 
echo "list all available python versions to install"
pyenv install -l
pyenv install 3.12.3
pyenv  versions
python -V
which python
pyenv  global 3.12.3
python  -V
python  -m venv ~/.venvs/my-python3-12-openai-venv
source ~/.venvs/my-python3-12-openai-venv/bin/activate
