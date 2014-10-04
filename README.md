sistema-postagem
================

Um pequeno sistema de postagem em php, 'cru' sem nenhum tipo de formatação css. São apenas as funções CRUD, conexão ao banco e tratamento de url contra sql injection. Neste sistema é possível adicionar um post, editar, excluir, visualizar, ativar e desativar. Abaixo segue a arquitetura:

sistema-postagem/<br>
├── painel/
│   └── add-categ.php
│    └── add-post.php
│     └── edit-post.php
│      └── index.php
├── system/
│   └── config.php
│    └── database.php
├── /
│   └── exibe.php
│    └── index.php
