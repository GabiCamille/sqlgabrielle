-- Databricks notebook source
SELECT * FROM silver_olist.pagamento_pedido

--leia-se: selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

select idPedido
from silver_olist.pedido

--leia-se: selecione a colune idPedido da tabela silver_olist.pedido

-- COMMAND ----------

select *,
  datediff(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

from silver_olist.pedido

-- COMMAND ----------


