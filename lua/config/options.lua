
-- general settings
-- for reference type ":help <option>"

local o = vim.opt

local options = {
    backup = false,				-- backup file
    clipboard = "unnamedplus",		-- system clipboard
    cmdheight = 2,                 	-- command line height
    completeopt = { "menuone", "noselect" }, -- complete options
    conceallevel = 0,                       -- so that `` is visible in markdown files
    fileencoding = "utf-8",                  -- file encoding
    hlsearch = true,				-- highlight all matches on previous search pattern
    ignorecase = true,			-- ignore case on search
    mouse = "a",				-- enable mouse in all modes
    pumheight = 10,				-- pop-up menu items qunatity
    showmode = false,			-- current mode
    showtabline = 2,				-- tablines
    smartindent = true,                      -- auto indent after symbols
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = false,                        -- creates a swapfile
    timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                         -- enable persistent undo
    updatetime = 300,                        -- faster completion (4000ms default)
    writebackup = false,			-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true,			-- converts tabs into spaces
    shiftwidth = 4,				-- number of spaces for indentation
    tabstop = 4,				-- number of spaces in tabs
    cursorline = true,          -- highlight current line
    number = true,              -- set numbered lines
    relativenumber = true,     -- set relative numbered lines
    numberwidth = 1,            -- set number column width to 2 {default 4}
    signcolumn = "yes",         -- always show the sign column, otherwise it would shift the text each time
    wrap = false,				-- display lines as one long line
    scrolloff = 8,				-- number of rows below cursor on scrolling
    sidescrolloff = 8,			-- same as above but columns
    colorcolumn = "80,130"
}

for k, v in pairs(options) do
    o[k] = v
end

o.shortmess:append "c"

-- commands
