PACKAGES=$(
	cat <<-END
		    dhall-lsp-server
		    hindent
	END
)

stack install $PACKAGES
