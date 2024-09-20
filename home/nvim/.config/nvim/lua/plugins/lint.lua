return {
	"mfussenegger/nvim-lint",
	event = { "BufWritePost" },
	opts = {
		linters_by_ft = {
			yaml = { "yamllint" },
			c = { "clangtidy" },
			cpp = { "clangtidy" },
			markdown = { "markdownlint" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			python = { "mypy", "ruff" },
			--   dockerfile = { "hadolint" },
			--   json = { "jsonlint" },
			--   markdown = { "vale" },
			--   rst = { "vale" },
		},
	},
	init = function()
		vim.api.nvim_create_autocmd("BufWritePost", {
			desc = "Lint on save",
			pattern = "*",
			group = vim.api.nvim_create_augroup("lint_on_save", { clear = true }),
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
