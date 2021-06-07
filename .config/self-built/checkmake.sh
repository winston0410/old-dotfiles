# go get github.com/mrtazz/checkmake
# cd $GOPATH/src/github.com/mrtazz/checkmake
# make

git clone --filter=blob:none --depth 1 https://github.com/mrtazz/checkmake.git
make -C ./checkmake
mv ./checkmake/checkmake "$HOME/.self-built/bin"
rm -rf ./checkmake
