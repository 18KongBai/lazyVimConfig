return {
  -- Custom formatters
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local null_ls_status_ok, null_ls = pcall(require, "null-ls")
      if not null_ls_status_ok then
        return
      end

      local b = null_ls.builtins

      local sources = {
        -- for tailwindcss
        b.formatting.prettierd.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "css",
            "scss",
            "less",
            "html",
            "json",
            "markdown",
          },
          prefer_local = "node_modules/.bin",
        }),
        -- Lua
        b.formatting.stylua,
        b.formatting.stylelint,
        b.formatting.eslint_d,
        -- 一个 JSON 文件修复器/格式化器，供人类使用（宽松的）JSON5。
        b.formatting.fixjson,
      }
      return {
        sources = sources,
      }
    end,
  },
}
