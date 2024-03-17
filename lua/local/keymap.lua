-- ----- Special keys -----
-- S - <Shift>
-- M - <Alt>
-- C - <Ctrl>
-- Space - <Space>

lvim.keys.normal_mode["<C-M-v>"] = "<Cmd>lua require('jdtls').extract_variable()<CR>"
lvim.keys.normal_mode["<C-M-c>"] = "<Cmd>lua require('jdtls').extract_constant()<CR>"
lvim.keys.normal_mode["<C-M-o>"] = "<Cmd>lua require('jdtls').organize_imports()<CR>"
lvim.keys.normal_mode["<C-M-m>"] = "<Cmd>lua require('jdtls').extract_method()<CR>"
lvim.keys.normal_mode["<F5>"] = "<Cmd>terminal mvn eclipse:eclipse<CR>"
lvim.keys.normal_mode["<F7>"] = "<Cmd>lua require('dapui').toggle({reset = true})<CR>"
lvim.keys.normal_mode["<F8>"] = "<Cmd>lua require('dap').step_over()<CR>"
lvim.keys.normal_mode["<F9>"] = "<Cmd>lua require('dap').continue()<CR>"
lvim.keys.normal_mode["<F10>"] = "<Cmd>lua require('dap').disconnect()<CR>"

-- Bufferline mappings
lvim.keys.normal_mode["<M-l>"] = "<Cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<M-h>"] = "<Cmd>BufferLineCyclePrev<CR>"

-- ChatGPT mappings
lvim.builtin.which_key.mappings["a"] = {
    name = "Open AI",
    mode = { "n", "v" },
    c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
    e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
    g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
    t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
    k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
    d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
    a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
    o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
    s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
    f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
    x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
    r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
    l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
}

-- LSP mappings
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Goto references", expr = true, silent = true })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<M-p>", vim.lsp.buf.signature_help, { desc = "Signature help" })
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
vim.keymap.set("n", "<M-i>", vim.lsp.buf.hover, { desc = "Show hover" })

-- Copilot mappings
vim.api.nvim_set_keymap("i", "<M-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
lvim.builtin.which_key.mappings["A"] = {
    name = "Copilot",
    mode = { "n", "v" },
    p = { "<cmd>Copilot panel<CR>", "Open Copilot Panel", mode = { "n", "v" } },
}

-- Persisted mappings
lvim.builtin.which_key.mappings["S"] = {
    name = "Session",
    mode = { "n" },
    a = { "<cmd>Telescope persisted<CR>", "All sessions", mode = { "n" } },
}
