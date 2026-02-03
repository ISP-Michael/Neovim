-- ~/.config/nvim/lua/flatwhite.lua
local M = {}

M.palette = {
  base1        = "#605a52",
  base7        = "#f7f3ee",
  green_bg     = "#e2e9c1",   -- строки
  blue_bg      = "#dde4f2",   -- параметры, значения
  teal_bg      = "#d2ebe3",   -- импорты, библиотеки, пространства имён
  purple_bg    = "#f1ddf1",   -- ключевые слова (фон!)
}

function M.setup()
  local p = M.palette

  vim.o.background = "light"
  vim.o.termguicolors = true
  vim.g.colors_name = "flatwhite"

  -- Очистка
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- Базовые стили
  vim.api.nvim_set_hl(0, "Normal", { fg = p.base1, bg = p.base7 })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.base1, italic = true })

  -- ГРУППЫ TREESITTER
  local groups = {
    -- === СТРОКИ: зелёный фон ===
    ["@string"]          = { bg = p.green_bg },
    ["@string.escape"]   = { bg = p.green_bg },
    ["@character"]       = { bg = p.green_bg },
    ["@string.special"]  = { bg = p.green_bg },

    -- === КЛЮЧЕВЫЕ СЛОВА: фиолетовый фон ===
    ["@keyword"]         = { bg = p.purple_bg },
    ["@keyword.function"]= { bg = p.purple_bg },
    ["@keyword.operator"]= { bg = p.purple_bg },
    ["@keyword.return"]  = { bg = p.purple_bg },
    ["@conditional"]     = { bg = p.purple_bg },
    ["@repeat"]          = { bg = p.purple_bg },
    ["@exception"]       = { bg = p.purple_bg },
    ["@include"]         = { bg = p.purple_bg },
    ["@storageclass"]    = { bg = p.purple_bg },
    ["@type.qualifier"]  = { bg = p.purple_bg },
    ["@debug"]           = { bg = p.purple_bg },
    ["@label"]           = { bg = p.purple_bg },

    -- === ПАРАМЕТРЫ и ЗНАЧЕНИЯ: голубой фон ===
    ["@parameter"]       = { bg = p.blue_bg },
    ["@number"]          = { bg = p.blue_bg },
    ["@float"]           = { bg = p.blue_bg },
    ["@boolean"]         = { bg = p.blue_bg },
    ["@constant"]        = { bg = p.blue_bg },
    ["@constant.builtin"]= { bg = p.blue_bg },
    ["@field"]           = { bg = p.blue_bg },      -- значения в объектах
    ["@property"]        = { bg = p.blue_bg },      -- свойства

    -- === ИМПОРТЫ и БИБЛИОТЕКИ: бирюзовый фон ===
    ["@namespace"]       = { bg = p.teal_bg },      -- import math
    ["@type"]            = { bg = p.teal_bg },      -- типы в импортах
    ["@type.builtin"]    = { bg = p.teal_bg },      -- встроенные типы
    ["@module"]          = { bg = p.teal_bg },      -- модули

    -- === ФУНКЦИИ: жирный шрифт (только название) ===
    ["@function"]        = { bold = true },
    ["@function.builtin"]= { bold = true },
    ["@function.macro"]  = { bold = true },
    ["@method"]          = { bold = true },
    ["@constructor"]     = { bold = true },

    -- === СКОБКИ ФУНКЦИЙ: жирный шрифт ===
    -- Круглые скобки параметров
    ["@punctuation.bracket"] = { bold = true },
    
    -- Фигурные скобки тела функции (через параметр)
    ["@function.bracket"] = { bold = true }, -- кастомная группа

    -- === КВАДРАТНЫЕ СКОБКИ ТИПОВ: жирный шрифт ===
    ["@type.definition"] = { bold = true }, -- для list[str]
    ["@punctuation.special"] = { bold = true }, -- квадратные скобки

    -- === ОПЕРАТОРЫ: обычный ===
    ["@operator"]        = {},

    -- === ПЕРЕМЕННЫЕ: обычный ===
    ["@variable"]        = {},
    ["@variable.builtin"]= {},

    -- === ОСТАЛЬНОЕ ===
    ["@tag"]             = {}, -- HTML/XML теги
    ["@tag.delimiter"]   = {},
  }

  -- Применяем группы
  for group, style in pairs(groups) do
    vim.api.nvim_set_hl(0, group, style)
  end

  -- Fallback для классического синтаксиса
  vim.api.nvim_set_hl(0, "String",          { bg = p.green_bg })
  vim.api.nvim_set_hl(0, "Keyword",         { bg = p.purple_bg })
  vim.api.nvim_set_hl(0, "Number",          { bg = p.blue_bg })
  vim.api.nvim_set_hl(0, "Function",        { bold = true })
  vim.api.nvim_set_hl(0, "Type",            { bg = p.teal_bg })
  vim.api.nvim_set_hl(0, "Include",         { bg = p.teal_bg }) -- импорты
  vim.api.nvim_set_hl(0, "StorageClass",    { bg = p.purple_bg })
  vim.api.nvim_set_hl(0, "Constant",        { bg = p.blue_bg })
end

return M
