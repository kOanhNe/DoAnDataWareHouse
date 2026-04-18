CREATE TABLE silver.error_order_items (
    order_item_id INT,
    order_id INT,
    order_item_quantity INT,
    order_item_product_price FLOAT,
    error_reason NVARCHAR(100),
    load_time DATETIME DEFAULT GETDATE()
);