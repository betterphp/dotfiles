return {
    { "mhinz/vim-signify" },
    {
        "dense-analysis/ale",
        config = function()
            local g = vim.g

            g.ale_php_phpcs_standard = "./ruleset.xml"
            g.ale_use_neovim_diagnostics_api = 1
        end,
    },
    { "morhetz/gruvbox" },
    { "kazhala/close-buffers.nvim" },
    { "junegunn/fzf" },
    { "junegunn/fzf.vim" },
    { "SirVer/ultisnips" },
    { "vim-vdebug/vdebug" },
    { "editorconfig/editorconfig-vim" },
    { "jeffkreeftmeijer/vim-numbertoggle" },
    { "tpope/vim-obsession" },
    { "sheerun/vim-polyglot" },
    { "wesQ3/vim-windowswap" },
    {
        "windwp/windline.nvim",
        config = function()
            require("wlsample.airline")
        end,
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
    },
}
