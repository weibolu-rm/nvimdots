-- shorthand
local o = vim.opt

-- NVIM OPTIONS
o.backup = false			              -- creates a backup file
o.fileencoding = "utf-8"                  -- encoding yup
o.completeopt = { "menuone", "noselect" } -- menuone: popup menu even when only one match
                                          -- noselect: force user to select from menu
o.clipboard = "unnamedplus"	              -- allows nvim to access sysyem clipboard
o.relativenumber = true		              -- show relative line numbers
o.splitbelow = true                       -- force all horizontal splits to go below current window
o.splitright = true                       -- force all vertical splits to go to the right of current window
o.swapfile = false                        -- creates a swapfile
o.expandtab = true			              -- spaces for tab
o.shiftwidth = 4                          -- number of spaces for shift indent
o.tabstop = 4                             -- number of spaces for tab
o.cursorline = true                       -- highlight current line
o.wrap = false                            -- line wrap
o.mouse = "a"                             -- allow mouse in nvim
o.ignorecase = true                       -- ignore case when searching (see smartcase)
o.smartcase = true                        -- override ignorecase when search pattern contains upper case characters
o.showmode = true                         -- show -- INSERT -- etc.
o.showtabline = 2                         -- always show tabline
o.smartindent = true                      -- indent smartly with new lines
o.termguicolors = true                    -- set term gui colors (most terminals support this)
o.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
o.undofile = true                         -- enable persistent undo
o.updatetime = 300                        -- faster completion (4000ms default)
o.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
o.scrolloff = 8                           -- have a few lines before reaching edge (amazing)
o.sidescrolloff = 8                       -- same for sidescroll
o.cmdheight = 0                           -- don't show cmd bar when not in use

vim.cmd [[set iskeyword+=-]]              -- let - be part of "words"
vim.cmd [[autocmd FileType lua setlocal shiftwidth=2 softtabstop=2 expandtab]]
