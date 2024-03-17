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
    },
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
    },
    {
        "jackMort/ChatGPT.nvim",
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
    {
        "dawsers/telescope-file-history.nvim"
    },
    {
        "olimorris/persisted.nvim",
        lazy = false,
        config = true,
    }
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls", "lemminx" })

require("local.gui")
require("local.keymap")
require("local.lsp")
require("local.neogen-plugin")
require("local.copilot")
require("local.clipboard")
require("local.telescope-file-history")
require("local.persisted")
require("local.nvim-scrollbar")
require("local.chatgpt")
