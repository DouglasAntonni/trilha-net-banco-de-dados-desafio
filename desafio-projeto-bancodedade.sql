
--1

SELECT
Nome,
Ano
FROM Filmes

--2

SELECT
Nome,
Ano,
Duracao
FROM Filmes
ORDER BY Ano

--3

SELECT
*
FROM Filmes
WHERE Nome	= 'De Volta para o Futuro'

--4

SELECT
*
FROM Filmes
WHERE Ano = 1997

--5

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Ano  > 2000

--6

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes WHERE Duracao  > 100 AND Duracao < 150
ORDER BY Duracao

--7

SELECT 
    Ano, 
    COUNT(*) QuantidadeDeFilmes
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    QuantidadeDeFilmes DESC

	--8

	SELECT 
    PrimeiroNome,
    UltimoNome,
	Genero
FROM 
    Atores
WHERE 
    Genero = 'M'

	SELECT * FROM Atores

	--9

SELECT 
    Id,
	PrimeiroNome,
    UltimoNome,
	Genero
FROM 
    Atores
WHERE 
    Genero = 'F'
	ORDER BY PrimeiroNome

	--10

SELECT
    Filmes.Nome,
    Generos.Genero
FROM
    FilmesGenero
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id

--11

SELECT
    Filmes.Nome,
    Generos.Genero
FROM
    FilmesGenero
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
WHERE Generos.Genero = 'Mistério'

--12

select * from ElencoFilme
SELECT * FROM Atores
SELECT * FROM Filmes

SELECT
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
FROM
ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
