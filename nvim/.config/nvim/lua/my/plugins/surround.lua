return {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },

    -- ys (motion) (param) to insert surround
    -- ds (param) to delete surround

    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = true,
}
