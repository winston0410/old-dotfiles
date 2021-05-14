PACKAGES=$(cat <<-END
tmuxp
yamllint
flake8
END
)

pip3 install --user $PACKAGES
