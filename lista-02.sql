Use lista1_22c;

SELECT *
FROM Livros
where disponivel = true;

SELECT * 
FROM Livros
where editora = "HarperCollins";

SELECT *
FROM Livros
where ano_publicacao between 2000 and 2010;

SELECT *
FROM Livros
where titulo like "%Senhor%";