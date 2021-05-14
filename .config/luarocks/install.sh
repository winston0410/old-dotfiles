# packages=$(cat <<- end
# penlight
# luaformatter
# luapak
# luafilesystem
# end
# )

# luarocks install --server=https://luarocks.org/dev $packages
luarocks install --server=https://luarocks.org/dev luaformatter
luarocks install --server=https://luarocks.org/dev luapak
luarocks install --server=https://luarocks.org/dev luafilesystem


