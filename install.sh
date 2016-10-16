#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	SOURCE="$(readlink "$SOURCE")"
	[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

set -o verbose

rm -f ~/.profile
rm -f ~/.zprofile
rm -f ~/.zlogin

ln -nsf "${DIR}/shellenv" ~/.shellenv
ln -nsf "${DIR}/shellrc" ~/.shellrc

ln -nsf "${DIR}/bash_profile" ~/.bash_profile
ln -nsf "${DIR}/bashrc" ~/.bashrc

ln -nsf "${DIR}/zshenv" ~/.zshenv
ln -nsf "${DIR}/zshrc" ~/.zshrc