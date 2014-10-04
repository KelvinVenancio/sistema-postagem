<?php
	require '../system/config.php';
	require '../system/database.php';
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<title>Adicionar Categoria</title>
</head>

<body>

	<h2>Adicionar Categoria</h2>
	<hr>

	<?php 

		if (isset($_POST['cadastro'])){
			$form['titulo'] = DBEscape(strip_tags(trim($_POST['titulo'])));
			$form['descricao'] = DBEscape(strip_tags(trim($_POST['descricao'])));
			$form['data'] = date('Y-m-d H:i:s');
			
			if (empty($form['titulo']))
				echo 'Preencha o campo título!';
			else if (empty($form['descricao']))
				echo 'Preencha o campo descrição!';
			else {

				$check = DBRead('categorias', "WHERE titulo = '". $form['titulo'] ."'");
				if ($check)
					echo 'Desculpe, categoria já existe!';
				else {

					if (DBCreate('categorias', $form))
						echo 'Categoria cadastrada com sucesso!';
					else
						echo 'Desculpe, ocorreu um erro!';
				}
			}

			echo '<hr>';
		}
	?>

	<form action="" method="post">
		
		<p>
			<label>Titulo</label><br>
			<input type="text" name="titulo">
		</p>

		<p>
			<label>Descrição</label><br>
			<textarea name="descricao" cols="30" rows="15"></textarea>
		</p>

		<input type="submit" name="cadastro" value="Cadastrar">

	</form>
	
</body>
</html>