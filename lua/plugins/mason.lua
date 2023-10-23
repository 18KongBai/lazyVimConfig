return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "emmet-ls",
        "json-lsp",
        "eslint_d",
        "fixjson",
        "prettierd",
        "stylelint-lsp",
        "vtsls",
        "markdownlint",
        "vetur-vls",
        "vim-language-server",
        "vue-language-server",
        "stylua",
      },
    },
  },
}
