lvim.plugins = {
    { "mfussenegger/nvim-jdtls" },
    {
        "briones-gabriel/darcula-solid.nvim",
        dependencies = "rktjmp/lush.nvim"
    },
    { "folke/tokyonight.nvim" }
}

lvim.transparent_window = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

lvim.lsp.automatic_servers_installation = false
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
lvim.format_on_save.enabled = true

lvim.keys.normal_mode["<F2>"] = "<Cmd>lua require('jdtls').extract_variable()<CR>"
lvim.keys.normal_mode["<F3>"] = "<Cmd>lua require('jdtls').extract_constant()<CR>"
lvim.keys.normal_mode["<F4>"] = "<Cmd>lua require'jdtls'.organize_imports()<CR>"
lvim.keys.normal_mode["<F5>"] = ":terminal mvn eclipse:eclipse<CR>"
lvim.keys.normal_mode["<F9>"] = "<Cmd>lua require'jdtls'.test_nearest_method()<CR>"
lvim.keys.normal_mode["<F7>"] = lvim.keys.normal_mode['<Space>dU']
lvim.keys.normal_mode["<F10>"] = ":terminal mvn spring-boot:run<CR>"

lvim.colorscheme = "darcula-solid"
