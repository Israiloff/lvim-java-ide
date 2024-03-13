lvim.plugins = {
    {
        "mfussenegger/nvim-jdtls",
    },
    {
        "israiloff/darcula-java",
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
                    color = "#CD7832",
                    color_nr = nil,             -- cterm
                    highlight = "CursorColumn",
                    hide_if_all_visible = true, -- Hides handle if all lines are visible
                },
            })
            require('gitsigns').setup()
            require("scrollbar.handlers.gitsigns").setup()
        end
    },
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = function()
            require('neogen').setup {
                enabled = true,             --if you want to disable Neogen
                input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
                -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
            }
        end,
        -- Uncomment next line if you want to follow only stable versions
        -- version = "*"
    },
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
            require("chatgpt").setup()
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "folke/trouble.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },
    {
        "github/copilot.vim"
    },
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

require("local.gui")
require("local.keymap")
require("local.lsp")
require("local.neogen")
require("local.copilot")
require("local.clipboard")
