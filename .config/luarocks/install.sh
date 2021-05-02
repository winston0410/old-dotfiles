PACKAGES=$(cat <<- END
luaformatter
END
)

luarocks install --server=https://luarocks.org/dev $PACKAGES
