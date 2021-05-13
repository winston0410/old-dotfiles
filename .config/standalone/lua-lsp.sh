# Clone package
git clone https://github.com/sumneko/lua-language-server
cd lua-language-server
git submodule update --init --recursive
# Build package
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
