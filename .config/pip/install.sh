PACKAGES=$(cat <<-END
tmuxp
yamllint
flake8
cmake-language-server
END
)

pip3 install --user $PACKAGES
