DECLARE @FromId BIGINT = 1;
DECLARE @ToId   BIGINT = 100000;

SELECT COUNT(*) AS RowsInBatch
FROM bronze.orders b
WHERE TRY_CAST(b.order_id AS BIGINT) IS NOT NULL
  AND TRY_CAST(b.order_id AS BIGINT) > @FromId
  AND TRY_CAST(b.order_id AS BIGINT) <= @ToId;