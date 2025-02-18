WITH employees_cleaned AS (
    SELECT 
        first AS first_name,       -- Standardized column name
        last AS last_name,         -- Standardized column name
        age,
        UPPER(sex) AS gender       -- Convert gender to uppercase (Male/Female)
    FROM {{ source('raw', 'tbl') }} -- Pulls from Snowflake
    WHERE age IS NOT NULL          -- Remove any null ages
)

SELECT * FROM employees_cleaned;
