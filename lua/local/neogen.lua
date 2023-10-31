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
    C = {
        name = "Java",
        d = { "<Cmd>lua require('neogen').generate()<CR>", "Generate java docs" },
    },
}

which_key.register(mappings, opts)
