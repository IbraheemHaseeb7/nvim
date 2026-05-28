-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')

	-- use ({ 
	-- 	'rose-pine/neovim',
	-- 	as = 'rose-pine',
	-- 	config = function ()
	-- 		vim.cmd('colorscheme rose-pine')
	-- 	end
	-- })
	
	use ({ 
		'folke/tokyonight.nvim',
		as = 'tokyonight',
		config = function ()
			vim.cmd('colorscheme tokyonight')
		end
	})

	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')

	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use { "sitiom/nvim-numbertoggle" }

	use {"williamboman/mason.nvim"}
	use {"williamboman/mason-lspconfig.nvim"}
	use({'neovim/nvim-lspconfig'})

	use 'm4xshen/autoclose.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'nvim-tree/nvim-web-devicons'

	use {"windwp/nvim-ts-autotag"}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use 'f-person/git-blame.nvim'
	use { "gbprod/substitute.nvim" }
	use({
		"kylechui/nvim-surround",
		tag = "*",
		config = function()
			require("nvim-surround").setup({
			})
		end
	})

	use 'github/copilot.vim'

	-- use ({
	-- 	"ravitemer/mcphub.nvim",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 	},
	-- 	build = "npm install -g mcp-hub@latest",  -- Installs `mcp-hub` node binary globally
	-- 	config = function()
	-- 		require("mcphub").setup()
	-- 	end
	-- })

	use ({
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("ibl").setup()
		end
	})
	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup({
				view_options = {
					show_hidden = true
				}
			})
		end,
	})

	use('nvim-pack/nvim-spectre')
	use('nvim-lua/plenary.nvim')
	use('sphamba/smear-cursor.nvim')

	use {
		'IbraheemHaseeb7/ghpr.nvim',
		config = function()
			vim.keymap.set('n', '<leader>gp', ':OpenPR<CR>', { desc = "Git: Open PR for line" })
		end
	}

	use {
		'rhysd/conflict-marker.vim',
	}


	use 'MunifTanjim/nui.nvim'
	use 'MeanderingProgrammer/render-markdown.nvim'
	use 'HakonHarnes/img-clip.nvim'
	use 'zbirenbaum/copilot.lua'
	use 'stevearc/dressing.nvim'
	use 'folke/snacks.nvim'

	use {
		'yetone/avante.nvim',
		run = 'make',
		requires = {
			'nvim-treesitter/nvim-treesitter',
			'stevearc/dressing.nvim',
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
			'nvim-tree/nvim-web-devicons',
			'hrsh7th/nvim-cmp',
			'MeanderingProgrammer/render-markdown.nvim',
		},
		config = function()
			require('avante').setup({
				provider = "mistral",
				providers = {
					mistral = {
						__inherited_from = "openai",
						api_key_name = "MISTRAL_API_KEY",
						timeout = 30000,
					},
				},
			})
		end
	}


	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})

	use({
		"https://github.com/ThePrimeagen/refactoring.nvim",
		requires = {
			"lewis6991/async.nvim",
		},
		lazy = false
	})

	use {
		'gelguy/wilder.nvim',
		requires = {
			'romgrk/fzy-lua-native',
			'nvim-tree/nvim-web-devicons',
		},
		run = ':UpdateRemotePlugins',
		config = function()
			local wilder = require('wilder')

			wilder.setup({
				modes = { ':', '/', '?' }
			})

			wilder.set_option('pipeline', {
				wilder.branch(
					wilder.cmdline_pipeline({
						fuzzy = 1,
						set_to_fuzzy_refiner = 1,
					}),
					wilder.vim_search_pipeline({
						fuzzy = 1,
					})
				),
			})
		end
	}

end)
