sistema-postagem
================

Um pequeno sistema de postagem em php, 'cru' sem nenhum tipo de formatação css. São apenas as funções CRUD, conexão ao banco e tratamento de url contra sql injection. Neste sistema é possível adicionar um post, editar, excluir, visualizar, ativar e desativar. Abaixo segue a arquitetura:

sistema-postagem/<br>
├── painel/<br>
│	└── add-categ.php<br>
│		└── add-post.php<br>
│			└── edit-post.php<br>
│				└── index.php<br>
├── system/<br>
│	└── config.php<br>
│		└── database.php<br>
├── /<br>
│	└── exibe.php<br>
│		└── index.php<br>
│			└── LICENSE<br>
│				└── README.md<br>
│					└── sistema.sql<br>
