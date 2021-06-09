PACKAGES=$(
	cat <<-END
		hindent
	END
)

stack install $PACKAGES
