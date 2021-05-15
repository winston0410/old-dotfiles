PACKAGES=$(cat <<- END
rustfmt
rust-src
END
)

NIGHTLY=$(cat <<- END
rust-analyzer-preview
END
)

rustup component add $PACKAGES
rustup +nightly component add $NIGHTLY
