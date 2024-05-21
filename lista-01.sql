use lista1_22c;

INSERT INTO Livros
VALUES (null, "As Crônicas de Nárnia", "C.S Lewis", 1950, true, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

INSERT INTO Livros
VALUES (null, "Cem anos de solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", "978-024196858", "Penguin Books", 422, "Espanhol"),
(null, "Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "Fantasia", "'978-0439708180", "Bloomsbury", 309, "Inglês"),
(null, "O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", "'978-0618640157", "HarperCollins", 423, "Inglês"); 

INSERT INTO Livros (categoria)
values ("História com detalhes ficticios");

UPDATE Livros
set disponivel = False  
where ano_publicacao > 2000;

UPDATE Livros
SET editora = "Plume Books"
where titulo = "1984";

UPDATE Livros
SET idioma = "Inglês"
where editora = "Penguin Books";

UPDATE Livros
SET titulo = "Harry Potter e a Pedra Filosofal(Edição Especial)"
where isbn = "978-0439708180";

DELETE from Livros
where categoria = "Terror";

DELETE FROM Livros
where idioma = "Francês" and ano_publicacao = 1970;

DELETE FROM Livros
where titulo = "As Crônicas de Nárnia";

DELETE FROM Livros
where editora = "Penguin Books";

Select *
from Livros
where quantidade_paginas > 500;

SELECT categoria, count(categoria)
FROM Livros
group by categoria;

SELECT *
from Livros
Limit 5;

SELECT SUM(quantidade_paginas) total, AVG(quantidade_paginas) media
FROM Livros
where categoria = "Drama";

SELECT AVG(ano_publicacao)
FROM Livros;

SELECT MAX(ano_publicacao), MIN(ano_publicacao)
FROM Livros;

SELECT *
FROM Livros
order by (ano_publicacao) DESC;

SELECT *
FROM Livros
where idioma = "Inglês"

UNION

SELECT *
FROM Livros
where idioma = "Português";


SELECT *
FROM Livros
where autor = "George Orwell";
