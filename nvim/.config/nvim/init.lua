local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable", --latest stable release
    lazyrepo,
    lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.backup = false
vim.opt.scrolloff = 10
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.history = 1000
vim.opt.number = true
vim.opt.cursorline = true

vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lazy").setup({
  spec = {
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
          ensure_installed = {
            "bash", "c", "clojure", "css", "dhall", "gitignore", "go", "graphql",
            "haskell", "html", "java", "json", "javascript", "lua", "markdown",
            "nix", "purescript", "sql", "typescript", "vue", "yaml"
          },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
      end
    },
    {
      "nvim-tree/nvim-tree.lua",
      config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_newrwPlugin = 1

        vim.opt.termguicolors = true

        require("nvim-tree").setup()
      end
    },
    {
      "kylechui/nvim-surround",
      version = "*",
      event = "VeryLazy",
      config = function()
        require("nvim-surround").setup({})
      end
    },
    "guns/vim-sexp",
    {
      "julienvincent/nvim-paredit",
      config = function()
        require("nvim-paredit").setup()
      end
    }
  },
  checker = { enabled = true }
})
