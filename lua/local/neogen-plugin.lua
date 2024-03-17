require('neogen').setup {
    enabled = true,             --if you want to disable Neogen
    input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
    -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
}

local wkstatus_ok, which_key = pcall(require, "which-key")
if not wkstatus_ok then
    return
end

local opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
}

local mappings = {
    j = {
        name = "Java",
        d = { "<Cmd>lua require('neogen').generate()<CR>", "Generate javadocs" },
    },
}

which_key.register(mappings, opts)
