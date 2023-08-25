create database livraria;
show databases;
use livraria;

create table livros(
  id int auto_increment,
  livro varchar (50),
  autor varchar(255),
  sexoautor varchar(255),
  numpag int,
  editora varchar(255),
  valorcapa varchar(255),
  kindle varchar(225),
  ano varchar(255),
  primary key (id)
);

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Pai Rico, Pai Pobre", "Robert T.Kiyoshi", "Masculino", 336, "Alta Books", "61,53", "58,45", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Mindset", "Carol S. Dweck", "Feminino", 312, "Objetiva", "38,99", "14,95", "2017");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Como fazer amigos e influenciar pessoas", "Dale Carnage", "Masculino", 256, "Sextante", "38,99", "33,24", "2019");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "A Cabana", "William P Young", "Masculino", 240, "Arqueiro", "35,99", "17,90", "2008");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "O Poder do Hábito", "Charles Duhigg", "Masculino", 408, "Objetiva", "42,99", "29,90", "2012");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Código Limpo", "Robert C. Martin", "Masculino", 425, "Alta Books", "91,99", "87,39", "2009");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Essencialismo", "Greg McKeown", "Masculino", 272, "Sextante", "53,58", "33,24", "2015");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Me Poupe!", "Nathalia Arcuri", "Feminio", 176, "Sextante", "32,86", "17,09", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "Comece pelo porquê", "Simon Sinek", "Masculino", 256, "Sextante", "50,58", "24,90", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) values (null, "O Alquimista", "Paulo Coelho", "Masculino", 206, "Paralela", "24,70", "14,70", "2017");

update livros set sexoautor='feminino' where Id=8;
-- 1 - trazer todos os dados
select * from livros;

-- 2 - Trazer nome dos livros e das editoras
select livro , editora from livros;

-- 3 - Trazer nome dos livros editorae autores do sexo masculino
select livro , editora , sexoautor from  livros where Id <11 and sexoautor like 'masculino';

-- 4 - Trazer nome dos livros numero de páginas do livro e autores do sexo feminino
select livro , sexoautor , numpag from livros where Id <11 and sexoautor like 'feminino';

-- 5 - trazer nome do autor, editora e ano que tenham sido publicados a partir do ano 2017
select autor, editora, ano from livros where Id <11 and ano like 2017;

-- 6 - Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Altas Books
select autor, sexoautor, editora from livros where Id <11 and sexoautor like 'masculino' and editora in ('Sextante' , 'Alta books');

-- 7 - Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum
select livro, autor, numpag, editora, valorcapa, ano from livros where Id <11;

-- 8 - Trazer o nome do livro, autor, número de páginas e valor noKindle
select livro, autor, numpag, kindle from livros where Id <11;

-- 9 - Trazer o nome dos autores com livros publicados pela editora Sextante
select autor, editora from livros where Id<11 and editora = 'Sextante';

-- 10 - Trazer o nome do livro, autores, valor com capa comum e valor no Kindle. 
select livro, autor, valorcapa, kindle from livros where Id <11;