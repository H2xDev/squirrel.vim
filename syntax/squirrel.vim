"------------------------------------------------------------------------------
" Vim syntax file
" Language: Squirrel (squirrel-lang.org)
" Maintainer: YASUHIRO.Kanda <yasuhiro.kanda@gmail.com>
" Last Change: 08-Mar-2010.
" Filenames: *.nut
" Version: 0.2
"------------------------------------------------------------------------------
" how to install
"
"  1. make folder
"     %VIMHOME%/after/syntax
"
"  2. copy "squrrel.vim" to
"     %VIMHOME%/after/syntax
"
"  3. in .vimrc
"     au BufNewFile,BufRead *.nut setf squirrel
"------------------------------------------------------------------------------

syn case match
syn keyword sqStatement		clone delegate resume return this parent constructor
syn keyword sqStatement		vargc vargv yield class extends
syn keyword sqConditional	else if switch case default
syn keyword sqExeption		try catch throw
syn keyword sqRepeat		for while continue break
syn keyword sqOperator		in delete typeof instanceof
syn keyword sqStorageClass	local static
syn keyword sqConstant		null
syn keyword sqBoolean		true false

" Comments
syn region sqCommentL start="\/\/" skip="\\$" end="$" keepend
syn region sqComment  start=+/\*+ end=+\*/+

" Strings
syn region sqString start=+"+ skip=+\\"+ end=+"+
syn region sqString start=+@"+ skip=+\\"+ end=+"+

" Numbers (decimal, octadecimal, hexadecimal, floating point number)
syn match sqNumberD "\<[1-9]\=\d\+\>" display 
syn match sqNumberH "\<0[xX]\x\+\>" display
syn match sqNumberO "\<0\o\>" display
syn match sqFloat "\<\d[\.][e\|E]\=[\-]\=\d\+\>" display

" Functions
syn match sqFuncName contained /\<\K\k*/ skipwhite skipempty
syn match sqFunction /\<function\>/ skipwhite nextgroup=sqFuncName
syn match sqArrowFunc "\w\+\s\+<-\s\+function" skipwhite contains=sqFunction
syn match sqArrowFunc "\w\+\s\+<-function" skipwhite contains=sqFunction
syn match sqArrowFunc "\w\+<-function" skipwhite contains=sqFunction

"" This code was taken directly from jsdoc.vim
"" syntax coloring for javadoc
syntax region sqComment    		matchgroup=sqComment start="+/\*+"  end="+\*/+"  nextgroup=jsDocParam
syntax region sqComment    		matchgroup=sqComment start="/\*\s*"  end="\*/" contains=jsDocTags fold

" tags containing a param
syntax match  jsDocTags         contained "@\(alias\|api\|augments\|borrows\|class\|constructs\|default\|defaultvalue\|emits\|exception\|exports\|extends\|fires\|kind\|link\|listens\|member\|member[oO]f\|mixes\|module\|name\|namespace\|requires\|template\|throws\|var\|variation\|version\)\>" skipwhite nextgroup=jsDocParam
" tags containing type and param
syntax match  jsDocTags         contained "@\(arg\|argument\|cfg\|param\|property\|prop\|typedef\)\>" skipwhite nextgroup=jsDocType
" tags containing type but no param
syntax match  jsDocTags         contained "@\(callback\|define\|enum\|external\|implements\|this\|type\|return\|returns\|yields\)\>" skipwhite nextgroup=jsDocTypeNoParam
" tags containing references
syntax match  jsDocTags         contained "@\(lends\|see\|tutorial\)\>" skipwhite nextgroup=jsDocSeeTag
" other tags (no extra syntax)
syntax match  jsDocTags         contained "@\(abstract\|access\|accessor\|async\|author\|classdesc\|constant\|const\|constructor\|copyright\|deprecated\|desc\|description\|dict\|event\|example\|file\|file[oO]verview\|final\|function\|global\|ignore\|inherit[dD]oc\|inner\|instance\|interface\|license\|localdoc\|method\|mixin\|nosideeffects\|override\|overview\|preserve\|private\|protected\|public\|readonly\|since\|static\|struct\|todo\|summary\|undocumented\|virtual\)\>"

syntax region jsDocType         contained matchgroup=jsDocTypeBrackets start="{" end="}" contains=jsDocTypeRecord oneline skipwhite nextgroup=jsDocParam
syntax match  jsDocType         contained "\%(#\|\"\|\w\|\.\|:\|\/\)\+" skipwhite nextgroup=jsDocParam
syntax region jsDocTypeRecord   contained start=/{/ end=/}/ contains=jsDocTypeRecord extend
syntax region jsDocTypeRecord   contained start=/\[/ end=/\]/ contains=jsDocTypeRecord extend
syntax region jsDocTypeNoParam  contained start="{" end="}" oneline
syntax match  jsDocTypeNoParam  contained "\%(#\|\"\|\w\|\.\|:\|\/\)\+"
syntax match  jsDocParam        contained "\%(#\|\$\|-\|'\|\"\|{.\{-}}\|\w\|\.\|:\|\/\|\[.\{-}]\|=\)\+"
syntax region jsDocSeeTag       contained matchgroup=jsDocSeeTag start="{" end="}" contains=jsDocTags
  
hi def link sqStatement     	Statement
hi def link sqConditional   	Conditional
hi def link sqException     	Exception
hi def link sqLabel         	Label
hi def link sqRepeat        	Repeat
hi def link sqOperator      	Operator
hi def link sqFuncName      	Function
hi def link sqArrowFunc			sqFuncName
hi def link sqStorageClass  	StorageClass
hi def link sqConstant      	Constant
hi def link sqBoolean       	Boolean
hi def link sqComment       	Comment
hi def link sqCommentL			Comment
hi def link sqString        	String
hi def link sqCharacter     	Character
hi def link sqFloat         	Float
hi def link sqNumberD			Number
hi def link sqNumberO			Number
hi def link sqNumberH			Number
hi def link sqKeyword			Keyword
hi def link sqFunction      	Type

hi def link jsDocTags           Special
hi def link jsDocSeeTag         Function
hi def link jsDocType           Type
hi def link jsDocTypeBrackets   jsDocType
hi def link jsDocTypeRecord     jsDocType
hi def link jsDocTypeNoParam    Type
hi def link jsDocParam          Label


syn sync maxlines=50

set fo+=r
set fo+=o
let b:current_syntax = "squirrel"
