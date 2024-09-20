return {
	-- edit your filesystem like a buffer
	-- see `https://github.com/stevearc/oil.nvim`
	{
		"stevearc/oil.nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			columns = { "icon" },
			default_file_explorer = true,
			delete_to_trash = true,
			skip_confirm_for_simple_edits = true,
			view_options = {
				show_hidden = true,
				natural_order = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git"
				end,
			},
			win_options = {
				wrap = true,
			},
		},
		keys = {
			{ "-", "<cmd>Oil<cr>", desc = "Open parent dir" },
		},
	},

	-- WhichKey helps you remember your Neovim keymaps
	-- see `https://github.com/folke/which-key.nvim`
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		config = function()
			local wk = require("which-key")
			wk.add({
				{ "<leader>c", group = "[C]ode" },
				{ "<leader>t", group = "[T]est" },
				{ "<leader>d", group = "[D]ocument" },
				{ "<leader>r", group = "[R]ename" },
				{ "<leader>s", group = "[S]earch" },
				{ "<leader>w", group = "[W]orkspace" },
			})
		end,
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},

	-- Library of 40+ independent Lua modules improving overall nvim experience with minimal effort
	-- see `https://github.com/echasnovski/mini.nvim`
	{
		"echasnovski/mini.nvim",
		version = "*",
		dependencies = {
			{ "echasnovski/mini.comment", version = "*" },
			{ "echasnovski/mini.cursorword", version = "*" },
			{ "echasnovski/mini.icons", version = false },
			{ "echasnovski/mini.hipatterns", version = "*" },
		},
		config = function()
			require("mini.comment").setup()
			require("mini.cursorword").setup()

			require("mini.icons").setup({
				diagnostics = { error = "" },
			})
			require("mini.hipatterns").setup()

			-- Simple and easy statusline.
			local statusline = require("mini.statusline")
			statusline.setup({ use_icons = vim.g.have_nerd_font })
			-- You can configure sections in the statusline by overriding their
			-- default behavior. For example, here we set the section for
			-- cursor location to LINE:COLUMN
			---@diagnostic disable-next-line: duplicate-set-field
			statusline.section_location = function()
				return "%2l:%-2v"
			end
		end,
	},

	-- pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
	-- see: `https://github.com/folke/trouble.nvim`
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},

	-- 🚀 Run Async Shell Commands in Vim 8.0 / NeoVim and Output to the Quickfix Window !!
	-- see: `https://github.com/skywind3000/asyncrun.vim`
	{
		"skywind3000/asyncrun.vim",
	},
	-- Profiling Annotations and Call Graph Exploration in NeoVim!
	-- see: `https://github.com/t-troebst/perfanno.nvim`
	-- {
	-- 	"t-troebst/perfanno.nvim",
	-- 	options = function()
	-- 		local util = require("perfanno.util")
	-- 		local bgcolor = vim.fn.synIDattr(vim.fn.hlID("Normal"), "bg", "gui")
	--
	-- 		require("perfanno").setup({
	-- 			-- Creates a 10-step RGB color gradient beween bgcolor and "#CC3300"
	-- 			line_highlights = util.make_bg_highlights(bgcolor, "#CC3300", 10),
	-- 			vt_highlight = util.make_fg_highlight("#CC3300"),
	-- 		})
	--
	-- 		local opts = { noremap = true, silent = true }
	-- 		vim.keymap.set("n", "<LEADER>plf", ":PerfLoadFlat<CR>", opts)
	-- 		vim.keymap.set("n", "<LEADER>plg", ":PerfLoadCallGraph<CR>", opts)
	-- 		vim.keymap.set("n", "<LEADER>plo", ":PerfLoadFlameGraph<CR>", opts)
	--
	-- 		vim.keymap.set("n", "<LEADER>pe", ":PerfPickEvent<CR>", opts)
	--
	-- 		vim.keymap.set("n", "<LEADER>pa", ":PerfAnnotate<CR>", opts)
	-- 		vim.keymap.set("n", "<LEADER>pf", ":PerfAnnotateFunction<CR>", opts)
	-- 		vim.keymap.set("v", "<LEADER>pa", ":PerfAnnotateSelection<CR>", opts)
	--
	-- 		vim.keymap.set("n", "<LEADER>pt", ":PerfToggleAnnotations<CR>", opts)
	--
	-- 		vim.keymap.set("n", "<LEADER>ph", ":PerfHottestLines<CR>", opts)
	-- 		vim.keymap.set("n", "<LEADER>ps", ":PerfHottestSymbols<CR>", opts)
	-- 		vim.keymap.set("n", "<LEADER>pc", ":PerfHottestCallersFunction<CR>", opts)
	-- 		vim.keymap.set("v", "<LEADER>pc", ":PerfHottestCallersSelection<CR>", opts)
	-- 	end,
	-- },
}
