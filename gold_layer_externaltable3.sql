-- 🔐 Step 1: Master Key

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'TeenSafety@Project2025';
 
-- 🔑 Step 2: Scoped Credential

CREATE DATABASE SCOPED CREDENTIAL cred_project

WITH IDENTITY = 'Managed Identity';
 
-- 📁 Step 3: External Data Sources

CREATE EXTERNAL DATA SOURCE source_silver

WITH (

    LOCATION = 'https://teensafety.dfs.core.windows.net/silver',

    CREDENTIAL = cred_project

);
 
CREATE EXTERNAL DATA SOURCE source_gold

WITH (

    LOCATION = 'https://teensafety.dfs.core.windows.net/golden',

    CREDENTIAL = cred_project

);
 
-- 📦 Step 4: File Format

CREATE EXTERNAL FILE FORMAT format_parquet

WITH (

    FORMAT_TYPE = PARQUET

);
 
-- 🪄 Step 5: External Tables using schema = gold, container = golden
 
CREATE EXTERNAL TABLE gold.ext_device_usage_summary

WITH (

    LOCATION = 'ext_device_usage_summary/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.device_usage_summary;
 
CREATE EXTERNAL TABLE gold.ext_phishing_by_age

WITH (

    LOCATION = 'ext_phishing_by_age/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.phishing_by_age;
 
CREATE EXTERNAL TABLE gold.ext_network_breach_alerts

WITH (

    LOCATION = 'ext_network_breach_alerts/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.network_breach_alerts;
 
CREATE EXTERNAL TABLE gold.ext_password_strength_distribution

WITH (

    LOCATION = 'ext_password_strength_distribution/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.password_strength_distribution;
 
CREATE EXTERNAL TABLE gold.ext_firewall_logs_by_device

WITH (

    LOCATION = 'ext_firewall_logs_by_device/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.firewall_logs_by_device;
 
CREATE EXTERNAL TABLE gold.ext_risky_vs_cloud_usage

WITH (

    LOCATION = 'ext_risky_vs_cloud_usage/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.risky_vs_cloud_usage;
 
CREATE EXTERNAL TABLE gold.ext_unencrypted_vs_download_risk

WITH (

    LOCATION = 'ext_unencrypted_vs_download_risk/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.unencrypted_vs_download_risk;
 
CREATE EXTERNAL TABLE gold.ext_education_vs_awareness

WITH (

    LOCATION = 'ext_education_vs_awareness/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.education_vs_awareness;
 
CREATE EXTERNAL TABLE gold.ext_network_vs_hours_online

WITH (

    LOCATION = 'ext_network_vs_hours_online/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.network_vs_hours_online;
 
CREATE EXTERNAL TABLE gold.ext_cyberbullying_by_geo

WITH (

    LOCATION = 'ext_cyberbullying_by_geo/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.cyberbullying_by_geo;
 
CREATE EXTERNAL TABLE gold.ext_ads_vs_download_risk

WITH (

    LOCATION = 'ext_ads_vs_download_risk/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.ads_vs_download_risk;





 