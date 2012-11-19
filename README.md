Instructions d'installation
===========================

Dans votre $HOME, créez un sous-dossier .vim/syntax/

Placez-y le fichier lda.vim

Ajoutez les deux lignes suivantes à votre fichier .vimrc :

<pre>
au BufRead,BufNewFile *.lda set filetype=lda
au! Syntax newlang source $VIM/syntax/lda.vim
</pre>

Éditez vos fichiers avec l'extension .lda afin que Vim reconnaisse la syntaxe.

N'hésitez pas à modifier ce fichier à votre guise et à me faire part de vos remarques !
