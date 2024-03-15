local lemminx_path = vim.fn.glob(vim.env.HOME ..
    "/projects/nvim/lemminx/org.eclipse.lemminx/target/org.eclipse.lemminx-uber.jar")

require 'lspconfig'.lemminx.setup {
    cmd = {
        "java",
        "-jar",
        lemminx_path
    },

    -- Enable LSP-based auto-completion
    capabilities = require('cmp_nvim_lsp').default_capabilities(),

    -- Other possible configurations like filetypes, root_dir, etc.
    filetypes = { "xml", "xsd", "xsl", "xslt", "svg" },
}

vim.cmd("LspStart lemminx")
