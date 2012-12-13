" Vim syntax file
" Language:     Langage de description d'algorithmes
" Maintainer:   Bruno Parmentier
" Last Change:  20121122
" Version:      0.3
"
" Ce fichier de syntaxe n'est pas complet, n'hésitez pas à me faire part de vos remarques.

if exists("b:current_syntax")
	finish
endif

" On ajoute l'utilisation du caractère - dans les keywords
setlocal iskeyword+=-

" Ignorer la casse
syn case ignore

" Keywords
syn keyword ldaCondition	fin-si si alors sinon selon-que vaut fin-selon-que
syn keyword ldaRepetition	tant-que faire fin-tant-que pour de à a par-pas-de par-pas pas fin-pour jusqu-à-ce-que jusqu-a-ce-que
syn keyword ldaBooleen		vrai faux
syn keyword ldaType		entier entiers réel reel réels reels caractère caractere caractères caracteres chaîne chaine chaînes chaines booléen booleen booléens booleens
syn keyword ldaDeclaration	retourner retourne
syn keyword ldaFonction		module fin-module structure fin-structure méthode fin-méthode classe fin-classe
syn keyword ldaFonction		écrire ecrire lire affiche afficher
syn keyword ldaEncapsulation	public privé prive
syn keyword ldaException	erreur
syn keyword ldaInstanciation	nouveau

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
highlight link ldaEncapsulation		StorageClass
highlight link ldaException		Exception
highlight link ldaInstanciation		Operator

let b:current_syntax = "lda"
