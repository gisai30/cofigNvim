local term_opts = { silent = true }
local keymap = vim.keymap
local opts = { silent = true, noremap = true }

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- Exit to normal mode
vim.api.nvim_set_keymap('i', 'qq', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'qi', '<ESC>wa', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'qe', '<ESC>ei', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'ql', '<ESC>la', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'q,', '<ESC>la,', { noremap = true, silent = true })


vim.api.nvim_set_keymap('i', 'qo', '<ESC>o', { noremap = true, silent = true })

-- Exit to visual mode
vim.api.nvim_set_keymap('v', 'qq', '<ESC>', { noremap = true, silent = true })
-- Saving and exit

vim.api.nvim_set_keymap('n', '<leader>ww', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qq', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dq', ':q!<CR>', { noremap = true, silent = true })

-- Close buffer
keymap.set('n', 'bd', ':bd<cr>')
keymap.set('n', 'bqd', ':bd!<cr>')

-- Delete backword
keymap.set('n', 'dw', 'vb"_d')

-- Open and Split vim
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

--Tree
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle <CR>', opts)

-- HOP key maps, jumps in lines
vim.api.nvim_set_keymap('n', '<leader>jw', ":HopPattern <cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>jcl', ":HopWordCurrentLine <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>jl', ":HopLineStart <CR>", opts)
vim.api.nvim_set_keymap('n', 'fl', "<cmd>lua require'hop'.hint_patterns()<cr>", opts)

--Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', ":Telescope find_files <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>fb', ":Telescope buffers <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>fs', ":Telescope current_buffer_fuzzy_find <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>ft', ":Telescope <CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>fi', ":Telescope treesitter <CR>", opts)

--Lspsaga
keymap.set('n', '<C-j>', ':Lspsaga diagnostic_jump_next<cr>', opts)
keymap.set('n', 'K', ':Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', ':Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('n', '<C-k>', ':Lspsaga diagnostic_jump_prev<cr>', opts)
vim.keymap.set('n', 'gp', ':Lspsaga preview_definition<cr>', opts)
vim.keymap.set('n', 'gr', ':Lspsaga rename<cr>', opts)
keymap.set('n', '<C-l>', ':LSoutlineToggle<cr>', opts)
