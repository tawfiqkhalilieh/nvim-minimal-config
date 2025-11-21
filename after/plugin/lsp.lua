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
-- vim.lsp.config['pyright'] = {
--     cmd = { vim.fn.exepath("pyright"), "--stdio" },
--     filetypes = { "python" },
--     root_markers = { "pyproject.toml", "setup.py", ".git" },
-- }

-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "python",
--     callback = function()
--         vim.lsp.start(vim.lsp.config['pyright`'])
--     end,
-- })


vim.lsp.enable('pyright')



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
        "typescript", "typescriptreact", "typescript.tsx", "json", "html", "css", "md"
    },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "javascript", "javascriptreact",
        "typescript", "typescriptreact", "typescript.tsx", "json", "html", "css", "md"
    },
    callback = function()
        vim.lsp.start(vim.lsp.config['prettier'])
    end,
})


------------------------------------------------------------
-- 🐚 Bash
------------------------------------------------------------
vim.lsp.config['bashls'] = {
    cmd = { vim.fn.exepath("bash-language-server"), "start" },
    filetypes = { "sh", "bash" },
    root_markers = { ".git" },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "sh", "bash" },
    callback = function()
        vim.lsp.start(vim.lsp.config['bashls'])
    end,
})

------------------------------------------------------------
-- 🐳 Docker
------------------------------------------------------------
vim.lsp.config['dockerls'] = {
    cmd = { vim.fn.exepath("docker-langserver"), "--stdio" },
    filetypes = { "dockerfile" },
    root_markers = { ".git", "Dockerfile" },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "dockerfile" },
    callback = function()
        vim.lsp.start(vim.lsp.config['dockerls'])
    end,
})

------------------------------------------------------------
-- 🌐 HTML
------------------------------------------------------------
vim.lsp.config['html'] = {
    cmd = { vim.fn.exepath("vscode-html-language-server"), "--stdio" },
    filetypes = { "html" },
    root_markers = { ".git", "index.html" },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html" },
    callback = function()
        vim.lsp.start(vim.lsp.config['html'])
    end,
})

vim.lsp.config['html'] = {
    cmd = { vim.fn.exepath("vscode-css-language-server"), "--stdio" },
    filetypes = { "html" },
    root_markers = { ".git", "style.css" },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html" },
    callback = function()
        vim.lsp.start(vim.lsp.config['html'])
    end,
})

------------------------------------------------------------
-- ☕ Java
------------------------------------------------------------
vim.lsp.config['jdtls'] = {
    cmd = { vim.fn.exepath("jdtls") },
    filetypes = { "java" },
    root_markers = { ".git", "pom.xml", "build.gradle" },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "java" },
    callback = function()
        vim.lsp.start(vim.lsp.config['jdtls'])
    end,
})



vim.lsp.config['rust'] = {
    cmd = { vim.fn.exepath("rust-analyzer") },
    filetypes = { "rust" },
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rust" },
    callback = function()
        vim.lsp.start(vim.lsp.config['rust'])
    end,
})


