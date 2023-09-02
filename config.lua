lvim.plugins = {
  "mfussenegger/nvim-jdtls",
}

if lvim.builtin.dap.active then
  require("user.dap").config()
end

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

require("user.null_ls").config()