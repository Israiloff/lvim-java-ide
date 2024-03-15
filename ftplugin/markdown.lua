lspconfig = require("lspconfig")

lspconfig.remark_ls.setup {
    root_dir = lspconfig.util.root_pattern(".git", ".remarkrc", "package.json", "pom.xml", ".settings"),
    settings = {
        requireConfig = true
    }
}

vim.cmd("LspStart remark_ls")
