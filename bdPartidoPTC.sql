CREATE DATABASE bdPartidoPTC

USE bdPartidoPTC

SELECT * FROM dbo.Filiados_PTC

SELECT nomeFiliado FROM dbo.Filiados_PTC
WHERE nomeFiliado LIKE 'Antonio%'

SELECT nomeFiliado FROM dbo.Filiados_PTC
WHERE nomeFiliado LIKE '%Sebasti�o%'

SELECT nomeFiliado FROM dbo.Filiados_PTC
WHERE nomeFiliado LIKE 'OS%'

SELECT nomeFiliado FROM dbo.Filiados_PTC
WHERE nomeMunicipio LIKE 'S�o F�lix%'

SELECT nomeFiliado FROM dbo.Filiados_PTC
WHERE nomeMunicipio LIKE 'Inhambupe%'

SELECT nomeFiliado, nomeMunicipio FROM dbo.Filiados_PTC
WHERE nomeMunicipio LIKE 'Santa%'

SELECT nomeFiliado, nomeMunicipio FROM dbo.Filiados_PTC
WHERE nomeMunicipio LIKE 'E%'

SELECT nomeFiliado, nomeMunicipio FROM dbo.Filiados_PTC
WHERE nomeMunicipio LIKE '%Cruz%'

SELECT nomeFiliado, nomeMunicipio FROM dbo.Filiados_PTC
WHERE nomeMunicipio LIKE '%de%'

SELECT nomeFiliado, dataFiliacao  FROM dbo.Filiados_PTC
WHERE dataFiliacao BETWEEN '01/01/1990' AND '01/01/2000'

SELECT nomeFiliado, dataFiliacao  FROM dbo.Filiados_PTC
WHERE dataFiliacao BETWEEN '02/01/2010' AND '01/03/2010'

SELECT nomeFiliado, dataFiliacao FROM dbo.Filiados_PTC
WHERE dataFiliacao BETWEEN '01/06/2007' AND '31/12/2007'

SELECT nomeFiliado, situacaoRegistro FROM dbo.Filiados_PTC
WHERE situacaoRegistro LIKE '%regular'

SELECT nomeFiliado, zonaEleitoral FROM dbo.Filiados_PTC
WHERE zonaEleitoral LIKE '203'

SELECT nomeFiliado, zonaEleitoral FROM dbo.Filiados_PTC
WHERE zonaEleitoral LIKE '180'

SELECT nomeFiliado, zonaEleitoral FROM dbo.Filiados_PTC
WHERE zonaEleitoral LIKE '199'

SELECT MAX(zonaEleitoral) FROM dbo.Filiados_PTC

SELECT MIN(zonaEleitoral) FROM dbo.Filiados_PTC

UPDATE dbo.Filiados_PTC
SET siglaPartido = 'PT'
WHERE codigoMunicipio LIKE '36471'

UPDATE dbo.Filiados_PTC
SET siglaPartido = 'PMDB'
WHERE codigoMunicipio LIKE '38490'

-- n�o prestei aten��o no exercicio e fiz a troca errada tamb�m.

UPDATE dbo.Filiados_PTC
SET siglaPartido = 'PC'
WHERE nomeMunicipio LIKE '%SANTAN�POLIS%'

-- por algum motivo n�o est� alterando.

UPDATE dbo.Filiados_PTC
SET siglaPartido = 'PV', nomePartido = 'Partido Verde'
WHERE nomeMunicipio LIKE 'S�o F�lix'

-- por algum motivo o que pede o municio de S�o F�lix n�o altera.

UPDATE dbo.Filiados_PTC
SET siglaPartido = 'PSDB', nomePartido = 'Partido da Social Democracia Brasileira'
WHERE nomeMunicipio LIKE 'ENCRUZILHADA'

UPDATE dbo.Filiados_PTC
SET nomeFiliado = 'JORGE LUIS MAGALH�ES DOS SANTOS'
WHERE nomeFiliado LIKE 'JORGE LUIS FERREIRA DOS SANTOS'

UPDATE dbo.Filiados_PTC
SET nomeFiliado = 'RENATA XAVIER RODRIGUES'
WHERE nomeFiliado LIKE 'BENTA XAVIER RODRIGUES'

UPDATE dbo.Filiados_PTC
SET nomeFiliado = 'NOEL LEITE DA SILVA'
WHERE nomeFiliado LIKE 'NOE LEITE DA SILVA'

UPDATE dbo.Filiados_PTC
SET situacaoRegistro = 'REGULAR'
WHERE nomeFiliado LIKE 'JOSIENE ANDRADE DE SOUZA'

UPDATE dbo.Filiados_PTC
SET situacaoRegistro = 'REGULAR'
WHERE nomeFiliado LIKE 'ELIEL ALMEIDA SILVA'

UPDATE dbo.Filiados_PTC
SET situacaoRegistro = 'DESFILIADO'
WHERE nomeFiliado LIKE 'ALINE DE SOUZA'

ALTER TABLE dbo.Filiados_PTC ADD Sexo CHAR (1)