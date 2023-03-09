CREATE DATABASE loja3;
/*Nome do Banco*/
USE loja3;

/*Exercício 1*/
CREATE TABLE Departamentos(
  idDepartamento INT PRIMARY KEY,
  nomeDepartamento VARCHAR(100));

  CREATE TABLE Funcionarios(
  idFuncionario INT PRIMARY KEY,
  nomeFuncionario VARCHAR(100),
  idDepartamento INT, 
   CONSTRAINT fk_departamentos_id FOREIGN KEY (idDepartamento) REFERENCES Departamentos(idDepartamento));

  /*Exercício 2 - ERRO */
   CREATE TABLE Produtos(
   IdProduto INT PRIMARY KEY,
   NomeProduto VARCHAR(50),
   idPreco DOUBLE PRECISION);

   CREATE TABLE Vendas(
   idVenda INT PRIMARY KEY,
   dataVenda DATETIME,
   idProduto INT,
   CONSTRAINT fk_produtos_id FOREIGN KEY (idProduto) REFERENCES Produtos(IdProduto));

  /*Exercício3*/
  /*Crie uma tabela "Alunos" com os campos "IdAluno" (chave primária) e "NomeAluno". 
  Crie outra tabela "Disciplinas" com os campos "IdDisciplina" (chave primária) e "NomeDisciplina". 
  Crie uma terceira tabela "Matriculas" com os campos "IdMatricula" (chave primária), 
  "IdAluno" (chave estrangeira referenciando a tabela "Alunos") e "IdDisciplina" (chave estrangeira referenciando a tabela "Disciplinas").*/
  CREATE TABLE Alunos(
  idAluno INT PRIMARY KEY,
  nomeAluno VARCHAR(100));

  CREATE TABLE Disciplinas(
  idDisciplina INT PRIMARY KEY,
  nomeDisciplina VARCHAR(100));

  CREATE TABLE Matriculas(
  idMatricula INT PRIMARY KEY,
  idAluno INT,
  idDisciplina INT,
  CONSTRAINT fk_aluno_id FOREIGN KEY (idAluno) REFERENCES Alunos(idAluno),
  CONSTRAINT fk_disciplinas_id FOREIGN KEY (idDisciplina) REFERENCES Disciplinas(idDisciplina));

  SELECT * FROM Matriculas

  /*Exercício 4*/
  /*Crie uma tabela "Pais" com os campos "IdPais" (chave primária) e "NomePais". 
  Crie outra tabela "Estados" com os campos "IdEstado" (chave primária), "NomeEstado" e 
  "IdPais" (chave estrangeira referenciando a tabela "Pais"). 
  Crie uma terceira tabela "Cidades" com os campos "IdCidade" (chave primária), "NomeCidade" e 
  "IdEstado" (chave estrangeira referenciando a tabela "Estados").*/
  CREATE TABLE Pais(
  IdPais INT PRIMARY KEY,
  nomePais VARCHAR(50));

  CREATE TABLE Estados(
  idEstado INT PRIMARY KEY,
  nomeEstado VARCHAR(100), 
  idPais INT,
  CONSTRAINT fk_pais_id FOREIGN KEY (idPais) REFERENCES Pais(idPais));

  CREATE TABLE Cidades(
  idCidade INT PRIMARY KEY,
  nomeCidade VARCHAR(100), 
  idEstado INT,
  CONSTRAINT fk_estados_id FOREIGN KEY (idEstado) REFERENCES Estados(idEstado));

  /*Exercício 5
  Crie uma tabela "Autores" com os campos "IdAutor" (chave primária) e "NomeAutor". 
  Crie outra tabela "Livros" com os campos "IdLivro" (chave primária), "TituloLivro" e 
  "IdAutor" (chave estrangeira referenciando a tabela "Autores"). 
  Crie uma terceira tabela "Editoras" com os campos "IdEditora" (chave primária) e "NomeEditora". 
  Crie uma quarta tabela "LivrosEditoras" com os campos "IdLivro" e 
  "IdEditora" (ambos chaves estrangeiras referenciando as tabelas "Livros" e "Editoras", respectivamente). 
  Essa tabela representa o relacionamento muitos-para-muitos entre livros e editoras.*/

  CREATE TABLE Autores(
  idAutor INT PRIMARY KEY,
  nomeAutor VARCHAR(50));

  CREATE TABLE Livros(
  idLivro INT PRIMARY KEY,
  tituloLivre VARCHAR(50),
  idAutor INT,
  CONSTRAINT fk_autores_id FOREIGN KEY (idAutor) REFERENCES Autores(idAutor));

  CREATE TABLE Editoras(
  idEditora INT PRIMARY KEY,
  nomeEditora VARCHAR(50));

  CREATE TABLE LivrosEditoras(
  idLivro INT IDENTITY (1,1) PRIMARY KEY, 
  CONSTRAINT fk_livros_id FOREIGN KEY (idLivro) REFERENCES Livros(idLivro),
  IdEditora INT,
  CONSTRAINT fk_editoras_id FOREIGN KEY (idEditora) REFERENCES Editoras(idEditora));


 

  
  
  