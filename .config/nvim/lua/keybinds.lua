-- filetype-specific keybinds can be found in the ftplugin folder, requires 'filetype plugin on'
-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- frankly i dont know what the hell im doing
map("n", "<Enter>", "i<Enter><Esc>k$")
-- map("n", "<S-Enter>", "d$O<Esc>p^")
-- map("n", "<Space>", "i<Space><Esc>")
map("n", "<A-Space>", "<Esc>")

