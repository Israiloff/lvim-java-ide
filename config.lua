lvim.plugins = {
    { "mfussenegger/nvim-jdtls" },
    {
        "briones-gabriel/darcula-solid.nvim",
        dependencies = "rktjmp/lush.nvim"
    },
    {
        "petertriho/nvim-scrollbar",
        config = function()
            require("scrollbar").setup({
                hide_if_all_visible = true,
                show = true,
                throttle_ms = 100,
                handle = {
                    text = " ",
                    blend = 40,                 -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
                    color = "Maroon",
                    color_nr = nil,             -- cterm
                    highlight = "CursorColumn",
                    hide_if_all_visible = true, -- Hides handle if all lines are visible
                },
            })
            require('gitsigns').setup()
            require("scrollbar.handlers.gitsigns").setup()
        end
    }
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
