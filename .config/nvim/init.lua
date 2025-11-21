-- =========================================
--           БАЗОВАЯ НАСТРОЙКА
-- =========================================

vim.o.compatible = false           -- отключаем совместимость с Vi
vim.o.syntax = "on"                -- подсветка синтаксиса
vim.o.clipboard = "unnamedplus"    -- использовать системный буфер обмена
vim.o.termguicolors = true         -- поддержка 24-битных цветов
vim.wo.cursorline = true           -- подсветка строки с курсором
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.signcolumn = "yes"           -- колонка для знаков всегда

-- =========================================
--           ОТСТУПЫ И ТАБЫ
-- =========================================

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- =========================================
--           ПОИСК
-- =========================================

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.inccommand = "nosplit"       -- live preview для :%s

-- =========================================
--           SPLIT И ОКНА
-- =========================================

vim.o.splitright = true
vim.o.splitbelow = true

-- =========================================
--           ОТКЛЮЧЕНИЕ СТРЕЛОК И МЫШИ
-- =========================================

vim.o.mouse = "" -- полностью отключаем мышь

local opts = { noremap = true, silent = true }
for _, mode in ipairs({"n", "i"}) do
  for _, key in ipairs({"<Up>", "<Down>", "<Left>", "<Right>"}) do
    vim.api.nvim_set_keymap(mode, key, "<Nop>", opts)
  end
end

-- =========================================
--           ПОДДЕРЖКА FILETYPE
-- =========================================

vim.cmd("filetype plugin indent on") -- включаем автоотступы под файлы

