" Vim syntax file
" Language:     Langage de description d'algorithmes
" Maintainer:   Bruno Parmentier
" Last Change:  20140805
" Version:      0.8

if exists("b:current_syntax")
	finish
endif

" On ajoute l'utilisation du caractère - dans les keywords
setlocal iskeyword+=-

" Ignorer la casse
syn case ignore

" Keywords
syn keyword ldaCondition        fin-si si alors sinon selon-que vaut
                                \ fin-selon-que
syn match   ldaCondition        /fin si\|selon que\|fin selon que/
syn keyword ldaRepetition       tant-que faire fin-tant-que pour de à a
                                \ par-pas-de par-pas fin-pour
                                \ jusqu-à-ce-que jusqu-a-ce-que
syn match   ldaRepetition       /tant que\|fin tant que\|par pas de\|par pas\|fin pour\|jusqu'à ce que\|jusqu'a ce que/
syn keyword ldaBooleen          vrai faux
syn keyword ldaType             entier entiers réel reel réels reels
                                \ caractère caractere caractères caracteres
                                \ chaîne chaine chaînes chaines booléen
                                \ booleen booléens booleens
syn keyword ldaDeclaration      retourner retourne
syn keyword ldaFonction         module fin-module structure fin-structure
                                \ méthode methode fin-méthode fin-methode
                                \ classe fin-classe constructeur
                                \ fin-constructeur
                                \ interface fin-interface
                                \ implémente implemente
syn match   ldaFonction         /fin module\|fin structure\|fin méthode\|fin methode\|fin classe\|fin constructeur\|fin interface/
syn keyword ldaFonction         écrire réécrire ecrire reecrire supprimer
                                \ lire affiche afficher ouvrir fermer initlec
                                \ liresuiv allouer libérer liberer eof
                                \ empiler enfiler dépiler depiler défiler
                                \ defiler sommet tête tete estvide
syn keyword ldaFonction         invclé invcle
syn keyword ldaEncapsulation    public privé prive
syn keyword ldaException        erreur
syn keyword ldaInstanciation    nouveau nouvelle
syn keyword ldaModeOuverture    input lecture output écriture ecriture
                                \ input-output extend
syn keyword ldaReference        accès acces
syn keyword ldaConstante        pi rien

" Commentaires
syn match   ldaCommentaire      "//.*"
syn region  ldaCommentaire      start="/\*" end="\*/"

" Chaînes de caractères et constantes
syn region  ldaChaineCaracteres  start=+"+ end=+"+
syn match   ldaNombre             "\<\([0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"

" Highlighting
highlight link ldaCondition         Conditional
highlight link ldaRepetition        Repeat
highlight link ldaBooleen           Boolean
highlight link ldaCommentaire       Comment
highlight link ldaType              Type
highlight link ldaDeclaration       Statement
highlight link ldaFonction          Function
highlight link ldaChaineCaracteres  String
highlight link ldaNombre            Number
highlight link ldaEncapsulation     StorageClass
highlight link ldaException         Exception
highlight link ldaInstanciation     Operator
highlight link ldaModeOuverture     Keyword
highlight link ldaReference         Keyword
highlight link ldaConstante         Constant

let b:current_syntax = "lda"
