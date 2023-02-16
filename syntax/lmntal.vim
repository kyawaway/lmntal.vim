" Vim syntax file
" Language:   LMNtal
" Maintainer: Kento Takyu <tkmz0216@gmail.com>
" Last Change: 2023 Feb 14

if exists("b:current_syntax")
    finish
endif

" Comment
syn region lmntalCommentBlock          start="/\*" end="\*/"
syn region lmntalCommentLineSlash      start="\/\/" end="$"
syn region lmntalCommentLinePercentage start="%" end="$" 
hi def link lmntalCommentBlock Comment
hi def link lmntalCommentLineSlash Comment
hi def link lmntalCommentLinePercentage Comment


" Operator
syn match lmntalOperator     "=\\=\|=:=\|\\==\|=<\|==\|>=\|\\=\|\\+\|=\.\.\|<\|>\|=\|+\|-\|\*\||"
syn match lmntalOperator     "===\|\\===\|<=\|=>"
syn match lmntalOperator     ":-"
hi def link lmntalOperator Operator


syn match lmntalSpecialChar "int\|unary\|ground\|uniq"
hi def link lmntalSpecialChar Special

" Context
syn match lmntalContext "\(\$\|@\)\w\+"
hi def link lmntalContext Constant


" RuleName 
syn match lmntalRuleName "[a-z]\w*@@" 
hi def link lmntalRuleName Statement


" Typedef 
syn match lmntalTypedef "typedef" 
hi def link lmntalRuleName Typedef


let b:current_syntax="lmntal"
