return {
    'nvim-treesitter/nvim-treesitter',
    event = { "BufReadPre", "BufNewFile" },
    build = ':TSUpdate',
    branch = "main",
    config = function()
        local ensureInstalled = {
            "c", 
            "cpp", 
            "systemverilog",
            "lua",
            "gitignore",
        }
        local alreadyInstalled = require("nvim-treesitter.config").get_installed()
        local parsersToInstall = vim.iter(ensureInstalled)
        :filter(function(parser) return not vim.tbl_contains(alreadyInstalled, parser) end)
        :totable()
        require("nvim-treesitter").install(parsersToInstall)
    end,
}
