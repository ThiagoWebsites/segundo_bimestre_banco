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

SELECT autor, count(titulo)
FROM Livros
group by autor
having count(titulo) > 1;

SELECT *
from Livros
where titulo like '%Senhor';

SELECT *
from Livros
where categoria in ("Fantasia", "Ficção Científica", "Fábula");

SELECT DISTINCT idioma
FROM Livros;

SELECT *
FROM Livros
where quantidade_paginas between 200 and 400;

SELECT titulo, ano_publicacao
FROM Livros
order by ano_publicacao asc;
