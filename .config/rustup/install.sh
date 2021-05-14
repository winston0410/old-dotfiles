PACKAGES=$(cat <<- END
rustfmt
END
)

rustup component add "$PACKAGES"
