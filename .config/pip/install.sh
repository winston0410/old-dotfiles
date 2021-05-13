PACKAGES=$(cat <<-END
tmuxp
yamllint
END
)

pip3 install --user $PACKAGES
