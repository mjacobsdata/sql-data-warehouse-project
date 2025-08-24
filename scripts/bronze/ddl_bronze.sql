/*
Creating Bronze Tables
Dropping existing tables if they already exists and creating the bronze schema.

*/

IF object_id('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
GO

CREATE TABLE bronze.crm_cust_info(
cust_id INT,
cust_key VARCHAR(50),
cust_firstname VARCHAR(50),
cust_lastname VARCHAR(50),
cust_material_status VARCHAR(50),
cust_gender VARCHAR(50),
cust_create_date VARCHAR(50)
);

IF object_id('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info(
prd_id INT,
prd_key VARCHAR(50),
prd_name VARCHAR(50),
prd_cost INT,
prd_line VARCHAR(50),
prd_start_date DATETIME,
prd_end_date DATETIME
);
GO

IF object_id('bronze.crm_sales_detail', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_detail;
GO

CREATE TABLE bronze.crm_sales_detail(
sls_order_num VARCHAR(50),
sls_order_key VARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);

GO

IF object_id('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101(
cid VARCHAR(50),
cntry VARCHAR(50)
);

GO

IF object_id('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12(
cid VARCHAR(50),
bdate DATE,
gen VARCHAR(50)
);

GO

IF object_id('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2(
id VARCHAR(50),
cat VARCHAR(50),
subcat VARCHAR(50),
maintenance VARCHAR(50)
);

GO
