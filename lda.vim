" Vim syntax file
" Language:     Langage de description d'algorithmes
" Maintainer:   Bruno Parmentier
" Last Change:  20121119
" Version:      0.2
"
" Ce fichier de syntaxe n'est pas complet, n'hésitez pas à me faire part de vos remarques.

if exists("b:current_syntax")
	finish
endif

" On ajoute l'utilisation du caractère - dans les keywords
setlocal iskeyword+=-

" Ignorer la casse
"syn case ignore

" Keywords
syn keyword ldaCondition	fin-si si alors sinon selon-que vaut fin-selon-que
syn keyword ldaRepetition	tant-que faire fin-tant-que pour de à fin-pour jusqu-à-ce-que
syn keyword ldaBooleen		vrai faux
syn keyword ldaType		entier réel caractère chaine booléen
syn keyword ldaDeclaration	retourner
syn keyword ldaFonction		module fin-module structure fin-structure
syn keyword ldaFonction		écrire lire

" Commentaires
syn match ldaCommentaire	"//.*"

" Chaînes de caractères et constantes
syn region ldaChaineCaracteres	start=+"+ end=+"+
syn match ldaNombre		"\<\([0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"

" Highlighting
highlight link ldaCondition		Conditional
highlight link ldaRepetition		Repeat
highlight link ldaBooleen		Boolean
highlight link ldaCommentaire		Comment
highlight link ldaType			Type
highlight link ldaDeclaration		Statement
highlight link ldaFonction		Function
highlight link ldaChaineCaracteres	String
highlight link ldaNombre		Number

let b:current_syntax = "lda"
