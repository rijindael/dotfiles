return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- Источник автодополнений от LSP
		"onsails/lspkind.nvim", -- Иконки для автодополнения
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")

		cmp.setup({
			completion = {
				autocomplete = false, -- Отключение автозапуска автодополнения
			},
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(), -- Вызов автодополненй от LSP
				["<C-e>"] = cmp.mapping.abort(), -- Закрыть меню
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Подтвердить выбор
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end, { "i", "s" }), -- Навигация вниз
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end, { "i", "s" }), -- Навигация вверх
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
			}),
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text", -- Показывать иконки и текст
					maxwidth = 50, -- Максимальная ширина всплывающего окна
				}),
			},
		})

		-- Настройка completeopt
		vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

		-- Подсветка элементов автодополнения
		vim.cmd([[highlight! default link CmpItemKind CmpItemMenuDefault]])
	end,
}
