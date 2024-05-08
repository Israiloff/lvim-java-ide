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
    },
    {
        "Pocco81/auto-save.nvim"
    },
    {
        "archibate/lualine-time"
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {}
    }
}
