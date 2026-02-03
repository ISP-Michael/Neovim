" ~/.config/nvim/after/syntax/flatwhite.vim
" Жирные скобки для всех языков (упрощённый вариант)

" Круглые скобки функций
syntax match FuncParens /[a-zA-Z_][a-zA-Z0-9_]*\s*(\|)/ containedin=ALL
hi link FuncParens Function

" Квадратные скобки типов (для Python, TypeScript)
syntax match TypeBrackets /[a-zA-Z_][a-zA-Z0-9_]*\s*\[\|\]/ containedin=ALL
hi link TypeBrackets Type

" Фигурные скобки тел функций (для C++, Java, JavaScript)
syntax match BodyBraces /{[^}]*}/ contains=ALL
hi link BodyBraces Function
