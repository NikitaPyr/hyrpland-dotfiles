vim.o.compatible = false
vim.o.syntax = "on"
vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.signcolumn = "yes"

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.inccommand = "nosplit"

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.mouse = ""

local opts = { noremap = true, silent = true }
for _, mode in ipairs({"n", "i"}) do
  for _, key in ipairs({"<Up>", "<Down>", "<Left>", "<Right>"}) do
    vim.api.nvim_set_keymap(mode, key, "<Nop>", opts)
  end
end

vim.cmd("filetype plugin indent on")
