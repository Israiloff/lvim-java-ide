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

lvim.keys.normal_mode["<S-TAB>"] = "<Cmd>BufferLineCycleNext<CR>"
