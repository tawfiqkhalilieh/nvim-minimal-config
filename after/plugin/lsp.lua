vim.lsp.config['lua_ls'] = {
    cmd = { vim.fn.exepath("lua-language-server") }, -- automatically find binary
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
        },
    },
}

-- Automatically start for Lua files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.lsp.start(vim.lsp.config['lua_ls'])
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.bo[args.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
    end,
})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true, -- <— this line makes diagnostics live-update in Insert mode
})


------------------------------------------------------------
-- 🐍 Python
------------------------------------------------------------
vim.lsp.config['pyright'] = {
    cmd = { vim.fn.exepath("pyright-langserver"), "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "setup.py", ".git" },
}


vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.lsp.start(vim.lsp.config['pyright'])
    end,
})

------------------------------------------------------------
-- 🦫 Go (Golang)
------------------------------------------------------------
vim.lsp.config['gopls'] = {
    cmd = { vim.fn.exepath("gopls") },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { "go.work", "go.mod", ".git" },
    settings = {
        gopls = {
            usePlaceholders = true,
            completeUnimported = true,
            staticcheck = true,
        },
    },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "go", "gomod", "gowork", "gotmpl" },
    callback = function()
        vim.lsp.start(vim.lsp.config['gopls'])
    end,
})


------------------------------------------------------------
-- ⚡ JavaScript / TypeScript
------------------------------------------------------------
vim.lsp.config['ts_ls'] = {
    cmd = { vim.fn.exepath("typescript-language-server"), "--stdio" },
    filetypes = {
        "javascript", "javascriptreact",
        "typescript", "typescriptreact", "typescript.tsx"
    },
    root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
    settings = {
        javascript = { suggest = { autoImports = true } },
        typescript = { suggest = { autoImports = true } },
    },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "javascript", "javascriptreact",
        "typescript", "typescriptreact", "typescript.tsx"
    },
    callback = function()
        vim.lsp.start(vim.lsp.config['ts_ls'])
    end,
})


vim.lsp.config['prettier'] = {
    cmd = { vim.fn.exepath("prettierd"), "--stdio" },
    filetypes = {
        "javascript", "javascriptreact",
        "typescript", "typescriptreact", "typescript.tsx", "json"
    },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "javascript", "javascriptreact",
        "typescript", "typescriptreact", "typescript.tsx", "json"
    },
    callback = function()
        vim.lsp.start(vim.lsp.config['prettier'])
    end,
})



