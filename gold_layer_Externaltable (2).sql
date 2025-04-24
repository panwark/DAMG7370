 
-- Phishing Attempts by Age Group

CREATE EXTERNAL TABLE gold.ext_phishing_by_age

WITH (

    LOCATION = 'ext_phishing_by_age/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.phishing_by_age;
 
-- Public Network Usage and Data Breach Alerts

CREATE EXTERNAL TABLE gold.ext_network_breach_alerts

WITH (

    LOCATION = 'ext_network_breach_alerts/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.network_breach_alerts;
 
-- Password Strength Distribution

CREATE EXTERNAL TABLE gold.ext_password_strength_distribution

WITH (

    LOCATION = 'ext_password_strength_distribution/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.password_strength_distribution;
 
-- Firewall Log Activity by Device

CREATE EXTERNAL TABLE gold.ext_firewall_logs_by_device

WITH (

    LOCATION = 'ext_firewall_logs_by_device/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.firewall_logs_by_device;
 
-- Risky Websites and Cloud Usage

CREATE EXTERNAL TABLE gold.ext_risky_vs_cloud_usage

WITH (

    LOCATION = 'ext_risky_vs_cloud_usage/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.risky_vs_cloud_usage;
 
-- Unencrypted Traffic vs Download Risk

CREATE EXTERNAL TABLE gold.ext_unencrypted_vs_download_risk

WITH (

    LOCATION = 'ext_unencrypted_vs_download_risk/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.unencrypted_vs_download_risk;
 
-- Education Content Usage by Awareness Score

CREATE EXTERNAL TABLE gold.ext_education_vs_awareness

WITH (

    LOCATION = 'ext_education_vs_awareness/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.education_vs_awareness;
 
-- Network Type and Online Activity

CREATE EXTERNAL TABLE gold.ext_network_vs_hours_online

WITH (

    LOCATION = 'ext_network_vs_hours_online/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.network_vs_hours_online;
 
-- Cyberbullying Reports by Geolocation

CREATE EXTERNAL TABLE gold.ext_cyberbullying_by_geo

WITH (

    LOCATION = 'ext_cyberbullying_by_geo/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.cyberbullying_by_geo;
 
-- Ad Clicks vs Download Risk by Age Group

CREATE EXTERNAL TABLE gold.ext_ads_vs_download_risk

WITH (

    LOCATION = 'ext_ads_vs_download_risk/',

    DATA_SOURCE = source_gold,

    FILE_FORMAT = format_parquet

)

AS SELECT * FROM gold.ads_vs_download_risk;

 