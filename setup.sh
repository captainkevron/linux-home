#!/bin/bash
set -o errexit
set -o nounset

install_tools() {
    sudo apt-get update && sudo apt-get install -y git tmux vim

}

setup_vim() {
    mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim 
    pushd ~/.vim/bundle
    if [ ! -d nerdtree ]; then
        git clone git@github.com:scrooloose/nerdtree.git
    fi
    if [ ! -d ctrlp.vim ]; then
        git clone git@github.com:kien/ctrlp.vim.git
    fi
    popd
}

link_dot_files() {
    ln -sf ~/repos/linux-home/.bash_aliases ~/.bash_aliases
    ln -sf ~/repos/linux-home/.vimrc ~/.vimrc
    ln -sf ~/repos/linux-home/.tmux.conf ~/.tmux.conf
}

install_tools
setup_vim
link_dot_files
