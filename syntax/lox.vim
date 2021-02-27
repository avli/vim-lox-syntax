" Vim syntax file
" Language: Lox
" Maintainer: Andrey Lisin <andrey.lisin@gmail.com>
" URL: https://github.com/avli/vim-lox-syntax/
" Latest Revision: 27 February 2021

if exists("b:current_syntax")
    finish
endif

syn keyword loxConditional  if then else
syn keyword loxBoolean      true false
syn keyword loxClassDecl    class
syn keyword loxFunDecl      fun
syn keyword loxVarDecl      var
syn keyword loxPrint        print
syn keyword loxLogicalOp    and or
syn keyword loxRepeat       while for
syn keyword loxNil          nil
syn keyword loxTypedef      this super
syn keyword loxConstructor  init
syn keyword loxTodo         TODO FIXME XXX NOTE contained

syn region  loxString       start='"' end='"'

syn match   loxNumber       "\d\+"
syn match   loxNumber       "[-+]\d\+"
syn match   loxNumber       "[-+]\?\d\+\.\d*"

syn region  loxComment      start="//" end="$" contains=loxTodo

syn region  loxBody         start="{" end="}" fold transparent

hi def link loxConditional  Conditional
hi def link loxBoolean      Boolean
hi def link loxClassDecl    StorageClass
hi def link loxFunDecl      Function
hi def link loxVarDecl      Label
hi def link loxPrint        Keyword
hi def link loxString       String
hi def link loxNumber       Number
hi def link loxLogicalOp    Operator
hi def link loxRepeat       Repeat
hi def link loxNil          Constant
hi def link loxTypedef      Typedef
hi def link loxConstructor  Function
hi def link loxComment      Comment
hi def link loxTodo         Todo

let b:current_syntax = "lox"

