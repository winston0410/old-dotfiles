PACKAGES=$(cat<<-END
golang.org/x/tools/gopls@latest
END
)

GO111MODULE=on go get $PACKAGES
