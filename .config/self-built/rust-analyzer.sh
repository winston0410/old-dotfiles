git clone --depth 1 --filter=blob:none https://github.com/rust-analyzer/rust-analyzer.git && cd rust-analyzer
cargo xtask install --server
cd .. && rm -rf ./rust-analyzer
