PACKAGES=$(
	cat <<-END
		golang.org/x/tools/gopls@latest
	END
)

USER_PACKAGES=$(
	cat <<-END
		github.com/jessfraz/dockfmt
		github.com/lighttiger2505/sqls
		golang.org/x/tools/cmd/goimports
		golang.org/x/lint/golint
	END
)

GO111MODULE=on go get $PACKAGES
go get $USER_PACKAGES
