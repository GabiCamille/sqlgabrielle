-- Databricks notebook source
SELECT * FROM SILVER_OLIST.PEDIDO

WHERE descSituacao = 'delivered'


LIMIT 100

--leia-se: selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered'

-- COMMAND ----------

SELECT
  *
FROM
  SILVER_OLIST.PEDIDO
WHERE
  descSituacao = 'shipped'
  and year(dtPedido) = '2018'
  
  --leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando 

-- COMMAND ----------

SELECT
  *
FROM
  SILVER_OLIST.PEDIDO
WHERE
  (descSituacao = 'shipped'or descSituacao = 'canceled')
  and year(dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  SILVER_OLIST.PEDIDO
WHERE
 descSituacao IN ('shipped','canceled')
  and year(dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  SILVER_OLIST.PEDIDO
WHERE
  (descSituacao = 'shipped'or descSituacao = 'canceled')
  and year(dtPedido) = '2018'
  and datediff(dtEstimativaEntrega, dtAprovado)>30

-- COMMAND ----------


