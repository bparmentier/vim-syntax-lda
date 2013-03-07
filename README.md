= Instructions d'installation =

Dans votre <code>$HOME</code>, créez un sous-dossier <code>.vim/syntax/</code>

Placez-y le fichier <code>lda.vim</code>

Ajoutez les deux lignes suivantes à votre fichier <code>.vimrc</code> :

<pre>
augroup filetypedetect
au BufRead,BufNewFile *.lda set filetype=lda
augroup END
</pre>

Éditez vos fichiers avec l'extension <code>.lda</code> afin que Vim reconnaisse la syntaxe.

N'hésitez pas à modifier ce fichier à votre guise et à me faire part de vos remarques !
