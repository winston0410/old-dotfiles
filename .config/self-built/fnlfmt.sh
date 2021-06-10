git clone --depth 1 --filter=blob:none https://git.sr.ht/~technomancy/fnlfmt
cd ./fnlfmt
make
mv ./fnlfmt ~/.self-built/bin
cd ../
rm -rf ./fnlfmt
