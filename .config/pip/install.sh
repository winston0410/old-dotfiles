PACKAGES=$(
	cat <<-END
		tmuxp
		vim-vint
		cpplint
		yamllint
		flake8
		cmake-language-server
		black
	END
)

pip3 install --user $PACKAGES
