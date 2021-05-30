PACKAGES=$(
	cat <<-END
		golang.org/x/tools/gopls@latest
		golang.org/x/lint/golint
	END
)

USER_PACKAGES=$(
	cat <<-END
		github.com/jessfraz/dockfmt
	END
)

GO111MODULE=on go get $PACKAGES
go get $USER_PACKAGES
