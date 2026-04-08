return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },

    config = function ()

        -- gcc to comment line
        -- gc <command> to comment
        local comment = require("Comment")
    end,
}
