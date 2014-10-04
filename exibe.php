<?php
	require_once 'system/config.php';
	require_once 'system/database.php';

	if (!isset($_GET['id']) || empty($_GET['id']))
		header('Location: index.php');
	else {

		$id 	= DBEscape (strip_tags(trim($_GET['id'])));
		$post 	= DBRead('posts', "WHERE id = '{$id}' LIMIT 1");

		if ($post) {
			$post = $post[0];
			$upVisitas = array(
				'visitas' => $post['visitas'] + 1
			);
			DBUpdate('posts', $upVisitas, "id = '{$id}'");
		}

	}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<title><?php echo (!$post) ? 'Erro 404!' : $post['titulo']; ?></title>
</head>

<body>
	
	<h1>
		<?php echo (!$post) ? 'Erro 404!' : $post['titulo']; ?> | <a href="index.php"> < Voltar</a>
	</h1>

	<?php if ($post): ?>

	<p>
		por <b><?php echo $post['autor']; ?></b>
		em <b><?php echo date('d/m/Y', strtotime($post['data'])) ?></b> |
		Visitas <b><?php echo $post['visitas']; ?></b>
	</p>
	<hr>
	
	<p>
		<?php echo $post['conteudo']; ?>
	</p>

	<?php endif; ?>

</body>
</html>