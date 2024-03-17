require("scrollbar").setup({
    hide_if_all_visible = true,
    show = true,
    throttle_ms = 100,
    handle = {
        text = " ",
        blend = 40,                             -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
        color = "#CD7832",
        color_nr = nil,                         -- cterm
        highlight = "CursorColumn",
        hide_if_all_visible = true,             -- Hides handle if all lines are visible
    },
})
require('gitsigns').setup()
require("scrollbar.handlers.gitsigns").setup()
