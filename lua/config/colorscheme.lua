local colorscheme = "nord"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("Colorscheme " .. colorscheme .. " not found!")
    return
end

vim.g.nord_contrast = true
vim.g.nord_borders = true

require('nord').set()
