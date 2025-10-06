return {
    {
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        lazy = false,
        priority = 100,
        dependencies = {
            -- Adds LSP completion capabilities
            "onsails/lspkind.nvim",
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            -- { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
            -- 'saadparwaiz1/cmp_luasnip',
        },
        config = function()
            -- [[ Configure nvim-cmp ]]
            local cmp = require 'cmp'
            local lspkind = require "lspkind"

            lspkind.init {}

            cmp.setup {
                sources = {
                    { name = 'nvim_lsp' },
                    -- { name = 'luasnip' },
                    { name = 'path' },
                    { name = 'buffer' },
                },
                -- snippet = {
                    -- expand = function(args)
                    --     luasnip.lsp_expand(args.body)
                    -- end,
                -- },
                completion = {
                    completeopt = 'menu,menuone,preview,noinsert,noselect',
                },
                mapping = cmp.mapping.preset.insert {
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete {},
                    ['<CR>'] = cmp.mapping.confirm {
                        -- behavior = cmp.ConfirmBehavior.Replace,
                        select = false,
                    },
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        -- elseif luasnip.expand_or_locally_jumpable() then
                        --     luasnip.expand_or_jump()
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        -- elseif luasnip.locally_jumpable(-1) then
                        --     luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                },
                formatting = {
                    format = lspkind.cmp_format({
                        mode = 'symbol', -- show only symbol annotations
                        maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                        -- can also be a function to dynamically calculate max width such as 
                        -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
                        ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
                        show_labelDetails = true, -- show labelDetails in menu. Disabled by default

                        -- The function below will be called before any actual modifications from lspkind
                        -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                        before = function (entry, vim_item)
                            return vim_item
                        end
                    })
                }

            }


            -- local ls = require 'luasnip'
            -- ls.config.set_config {
            --     history = false,
            --     updateevents = "TextChanged,TextChangedI",
            -- }
            --
            -- for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/lsp/snippets/*.lua", true)) do
            --     loadfile(ft_path)()
            -- end
            --
            -- vim.keymap.set({ "i", "s" }, "<C-k>", function()
            --     if ls.expand_or_jumpable() then
            --         ls.expand_or_jump()
            --     end
            -- end, { silent = true })
            --
            -- vim.keymap.set({ "i", "s" }, "<C-j>", function()
            --     if ls.jumpable(-1) then
            --         ls.jump(-1)
            --     end
            -- end, { silent = true })
        end
    },
}
