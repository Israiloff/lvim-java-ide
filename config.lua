vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

lvim.plugins = {
    {
        "mfussenegger/nvim-jdtls",
    },
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


require("local.gui")
require("local.keymap")
require("local.lsp")
