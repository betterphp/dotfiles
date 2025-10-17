return {
  { "mhinz/vim-signify" },
  { "dense-analysis/ale" },
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
