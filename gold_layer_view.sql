-- 11. Phishing Attempts by Age Group

CREATE OR ALTER VIEW gold.phishing_by_age AS

SELECT

    Age_Group,

    SUM(Phishing_Attempts) AS total_phishing

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Age_Group VARCHAR(20),

    Phishing_Attempts INT

) AS data

GROUP BY Age_Group;
 
-- 12. Public Network Usage and Data Breach Alerts

CREATE OR ALTER VIEW gold.network_breach_alerts AS

SELECT

    Public_Network_Usage,

    AVG(Data_Breach_Notifications) AS avg_breach_alerts

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Public_Network_Usage VARCHAR(10),

    Data_Breach_Notifications INT

) AS data

GROUP BY Public_Network_Usage;
 
-- 13. Password Strength Distribution

CREATE OR ALTER VIEW gold.password_strength_distribution AS

SELECT

    Password_Strength,

    COUNT(*) AS user_count

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (Password_Strength VARCHAR(20)) AS data

GROUP BY Password_Strength;
 
-- 14. Firewall Log Activity by Device

CREATE OR ALTER VIEW gold.firewall_logs_by_device AS

SELECT

    Device_Type,

    AVG(Firewall_Logs) AS avg_logs

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Device_Type VARCHAR(50),

    Firewall_Logs INT

) AS data

GROUP BY Device_Type;
 
-- 15. Risky Websites and Cloud Usage

CREATE OR ALTER VIEW gold.risky_vs_cloud_usage AS

SELECT

    Cloud_Service_Usage,

    AVG(Risky_Website_Visits) AS avg_risky

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Cloud_Service_Usage VARCHAR(10),

    Risky_Website_Visits INT

) AS data

GROUP BY Cloud_Service_Usage;
 
-- 16. Unencrypted Traffic vs Download Risk

CREATE OR ALTER VIEW gold.unencrypted_vs_download_risk AS

SELECT

    Unencrypted_Traffic,

    AVG(Download_Risk) AS avg_risk

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Unencrypted_Traffic VARCHAR(10),

    Download_Risk FLOAT

) AS data

GROUP BY Unencrypted_Traffic;
 
-- 17. Education Content Usage by Awareness Score

CREATE OR ALTER VIEW gold.education_vs_awareness AS

SELECT

    Education_Content_Usage,

    AVG(E_Safety_Awareness_Score) AS avg_awareness

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Education_Content_Usage VARCHAR(10),

    E_Safety_Awareness_Score FLOAT

) AS data

GROUP BY Education_Content_Usage;
 
-- 18. Network Type and Online Activity

CREATE OR ALTER VIEW gold.network_vs_hours_online AS

SELECT

    Network_Type,

    AVG(Hours_Online) AS avg_hours

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Network_Type VARCHAR(20),

    Hours_Online FLOAT

) AS data

GROUP BY Network_Type;
 
-- 19. Cyberbullying Reports by Geolocation

CREATE OR ALTER VIEW gold.cyberbullying_by_geo AS

SELECT

    Geolocation,

    AVG(Cyberbullying_Reports) AS avg_reports

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Geolocation VARCHAR(50),

    Cyberbullying_Reports INT

) AS data

GROUP BY Geolocation;
 
-- 20. Ad Clicks vs Download Risk by Age Group

CREATE OR ALTER VIEW gold.ads_vs_download_risk AS

SELECT

    Age_Group,

    AVG(Ad_Clicks) AS avg_clicks,

    AVG(Download_Risk) AS avg_download_risk

FROM OPENROWSET(

    BULK 'https://teensafety.dfs.core.windows.net/silver/teen_e_safety_cleaned/',

    FORMAT = 'PARQUET'

)

WITH (

    Age_Group VARCHAR(20),

    Ad_Clicks INT,

    Download_Risk FLOAT

) AS data

GROUP BY Age_Group;

 