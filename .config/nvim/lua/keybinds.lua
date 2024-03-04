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
map("n", "<Enter>", "i<Enter><Esc>k$") -- Enter in normal moves the current line down
-- map("n", "<Space>", "i<Space><Esc>") -- Space in normal inserts a space, shifting the current character to the right
-- map("n", "<S-Enter>", "d$O<Esc>p^")
map("n", "<A-Space>", "<Esc>") -- Alt+Space goes to normal mode using Esc

