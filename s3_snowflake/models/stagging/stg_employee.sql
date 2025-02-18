-- Staging model for employee data
SELECT
    first AS first_name,
    last AS last_name,
    age,
    sex AS gender
FROM {{ source('raw', 'tbl') }};
