PACKAGES=$(
	cat <<-END
		tmuxp
		yamllint
		flake8
		cmake-language-server
		black
	END
)

pip3 install --user $PACKAGES
