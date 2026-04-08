return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({
            renderer = {
                icons = {
                    show = {
                        file = false,
                        folder = false,
                        folder_arrow = true,
                        git = true,
                    },
                },
            },
            view = {
                width = 35,
                side = 'left',
            },
            git = {
                ignore = false,
            },
            sync_root_with_cwd = true, --fix to open cwd with tree
            respect_buf_cwd = true,
            update_cwd = true,
            update_focused_file = {
                enable = true,
                update_cwd = true,
                update_root = true,
            },
        })
    end
}
