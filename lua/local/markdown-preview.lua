-- Neovim settings for markdown-preview.nvim plugin in Lua

-- Auto start markdown preview
vim.g.mkdp_auto_start = 1

-- Auto close preview window when switching from a Markdown buffer
vim.g.mkdp_auto_close = 1

-- Control Markdown refresh behavior
vim.g.mkdp_refresh_slow = 0

-- Allow MarkdownPreview command for all files
vim.g.mkdp_command_for_global = 0

-- Make preview server accessible to others on your network
vim.g.mkdp_open_to_the_world = 0

-- Use a custom IP for opening the preview page
vim.g.mkdp_open_ip = ''

-- Specify a browser for opening the preview page
vim.g.mkdp_browser = ''

-- Echo preview page URL in command line when opening
vim.g.mkdp_echo_preview_url = 0

-- Custom Vim function to open preview page
vim.g.mkdp_browserfunc = ''

-- Markdown rendering options
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {},
  uml = {},
  maid = {},
  disable_sync_scroll = 0,
  sync_scroll_type = 'middle',
  hide_yaml_meta = 1,
  sequence_diagrams = {},
  flowchart_diagrams = {},
  content_editable = false,
  disable_filename = 0,
  toc = {}
}

-- Custom Markdown CSS style
vim.g.mkdp_markdown_css = ''

-- Custom highlight style
vim.g.mkdp_highlight_css = ''

-- Custom port for server or empty for random
vim.g.mkdp_port = '93235'

-- Preview page title, ${name} replaced by file name
vim.g.mkdp_page_title = '「${name}」'

-- Custom location for images
vim.g.mkdp_images_path = vim.env.HOME .. '/temp/nvim/markdown/.images'

-- Recognized filetypes for MarkdownPreview commands
vim.g.mkdp_filetypes = {'markdown'}

-- Default theme (dark or light)
vim.g.mkdp_theme = 'dark'

-- Combine preview window
vim.g.mkdp_combine_preview = 0

-- Auto refetch combine preview contents when changing Markdown buffer
vim.g.mkdp_combine_preview_auto_refresh = 1

