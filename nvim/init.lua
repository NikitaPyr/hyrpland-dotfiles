-- =========================================
--           БАЗОВАЯ НАСТРОЙКА
-- =========================================

-- Подсветка синтаксиса
vim.cmd('syntax on') -- делает код цветным: ключевые слова, строки, комментарии

-- Отключаем совместимость с Vi
vim.o.compatible = false -- включает все современные функции Vim/Neovim

-- Используем системный буфер обмена
vim.o.clipboard = "unnamedplus" -- позволяет копировать/вставлять между Neovim и другими приложениями

-- =========================================
--           НОМЕРА СТРОК
-- =========================================

vim.wo.number = true         -- показываем реальные номера строк
vim.wo.relativenumber = true -- показываем относительные номера для удобных движений

-- =========================================
--           ОТСТУПЫ И ТАБЫ
-- =========================================

vim.o.tabstop = 4        -- ширина таба в 4 пробела
vim.o.shiftwidth = 4     -- автоотступы на 4 пробела
vim.o.expandtab = true   -- заменяем табы пробелами
vim.o.smartindent = true -- умные отступы по структуре кода

-- =========================================
--           ВИЗУАЛЬНЫЕ ФИЧИ
-- =========================================

vim.o.termguicolors = true -- поддержка 24-битных цветов
vim.wo.cursorline = true   -- подсветка строки с курсором

-- =========================================
--           ПОИСК
-- =========================================

vim.o.ignorecase = true   -- поиск без учёта регистра
vim.o.smartcase = true    -- если есть заглавные буквы, учитывается регистр
vim.o.incsearch = true    -- интерактивный поиск по мере ввода
vim.o.hlsearch = true     -- подсвечивать все совпадения после Enter

-- =========================================
--           УДОБСТВО И БЛОКИРОВКА СТРЕЛОК
-- =========================================

vim.o.mouse = ''          -- полностью отключаем мышь
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })

-- =========================================
--           ПОВЕДЕНИЕ SPLIT
-- =========================================

vim.o.splitright = true   -- новые вертикальные окна открываются справа
vim.o.splitbelow = true   -- новые горизонтальные окна открываются снизу

