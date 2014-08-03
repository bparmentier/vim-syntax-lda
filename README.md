# Vim : coloration syntaxique pour LDA (Langage de description d'algorithmes)

Ce fichier supporte la plupart des mots-clés utilisés aux cours de Logique
enseignés à l'École Supérieure d'Informatique.

## Installation

Dans votre `$HOME`, créez un sous-dossier `~/.vim/syntax/` et placez-y le fichier `lda.vim` (ou clonez ce dépôt et créez un lien vers le fichier).

Ajoutez les lignes suivantes à votre fichier `~/.vimrc` :

```
augroup filetypedetect
au BufRead,BufNewFile *.lda set filetype=lda
augroup END
```

Éditez vos fichiers d'algorithmes avec l'extension `.lda` afin que Vim reconnaisse la syntaxe.

N'hésitez pas à modifier ce fichier à votre guise et à me faire part de vos remarques !
