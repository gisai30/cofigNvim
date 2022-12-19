vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
	-- My plugins here

	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'

	-- autocomplete
	-- use 'jiangmiao/auto-pairs'
	use 'windwp/nvim-ts-autotag'
	use 'windwp/nvim-autopairs'

	-- Movement
	use 'phaazon/hop.nvim'
	-- use 'christoomey/vim-tmux-navigator'
	use 'nvim-telescope/telescope.nvim'

	-- Tree explorer
	use 'kyazdani42/nvim-tree.lua'
	use 'kyazdani42/nvim-web-devicons'
	use "lukas-reineke/indent-blankline.nvim"
	use 'simrat39/symbols-outline.nvim'

	-- View models
	use 'mvllow/modes.nvim'

	--Thems
	use 'joshdick/onedark.vim'
	-- use 'arcticicestudio/nord-vim'
	use 'shaunsingh/nord.nvim'
	use 'nvim-lualine/lualine.nvim'
	use { "catppuccin/nvim", as = "catppuccin" }
	use "folke/twilight.nvim"

	-- Autocomplete
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	use 'L3MON4D3/LuaSnip' -- Snippet
	use 'onsails/lspkind.nvim' -- vscode-like pictograms
	use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's build-in LSP
	use 'hrsh7th/nvim-cmp' -- LSP

	-- Colors codej
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'norcalli/nvim-colorizer.lua'

	-- Comments
	use 'tpope/vim-commentary'
	-- https://github.com/tpope/vim-commentary

	--Buffer Lines
	use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

	--LPS Saga -> Menu
	use 'glepnir/lspsaga.nvim'

	-- Dashboard
	-- use 'glepnir/dashboard-nvim'
	use { "goolord/alpha-nvim", require = 'kyazdani42/nvim-web-devicons' }

	-- Prettier and NULL ls
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/prettier.nvim'

	-- Git
	use 'lewis6991/gitsigns.nvim'
	use 'tanvirtin/vgit.nvim'

end)
