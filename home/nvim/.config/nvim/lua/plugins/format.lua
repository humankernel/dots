return {
	"stevearc/conform.nvim",
	lazy = true,
	event = "BufWritePre",
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	-- Everything in opts will be passed to setup()
	opts = {
		-- Set up format-on-save
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
		formatters_by_ft = {
			["*"] = { "codespell" },
			lua = { "stylua" },
			python = { "ruff_format", "black", stop_after_first = true },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			c = { "clang_format" },
			cpp = { "clang_format" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
	},
	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
