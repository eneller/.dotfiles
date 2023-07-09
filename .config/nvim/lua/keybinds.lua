-- filetype-specific keybinds can be found in the ftplugin folder, requires 'filetype plugin on'
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Enter>", "i<Enter><Esc>k$")
-- map("n", "<S-Enter>", "d$O<Esc>p^")
map("n", "<Space>", "i<Space><Esc>")

