SELECT 
    Produto, 
    Categoria, 
    SUM(Quantidade * Preco) AS Total_Vendas
FROM vendas
GROUP BY Produto, Categoria
ORDER BY Total_Vendas DESC;
-- Consulta 1 - Lista o nome do produto, categoria e a soma total de vendas
-- Por Lógica: Agrupa os dados por Produto e Categoria, calculando soma de Quantidade * Preço (Total de Vendas) e ordenar pela ordem decrescente pelo total.

-- _____________________________________________________________________________________


SELECT 
    Produto, 
    SUM(Quantidade) AS Total_Quantidade
FROM vendas
WHERE MONTH(Data) = 6 AND YEAR(Data) = 2024
GROUP BY Produto
ORDER BY Total_Quantidade ASC;
-- Consulta 2: Identificar os produtos que venderam menos no mês de junho de 2024
-- Pela Lógica: Filtra as vendas do mês de junho de 2024, e agrupa por Produto e calcual a soma da Quantidade, ordenando em ordem crescente pra identificar os produtos com os menores números de vendas.
