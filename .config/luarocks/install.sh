PACKAGES=$(cat <<- END
penlight
luaformatter
END
)

luarocks install --server=https://luarocks.org/dev $PACKAGES
