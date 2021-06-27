PACKAGES=$(
	cat <<-END
	END
)

USER_PACKAGES=$(
	cat <<-END
		github.com/jessfraz/dockfmt
		github.com/lighttiger2505/sqls
	END
)

# GO111MODULE=on go get $PACKAGES
go get $USER_PACKAGES
