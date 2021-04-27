Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}
EOF

"Command to run to install syntax highlight
"TSInstall javascript css json lua rust typescript yaml html svelte vue
