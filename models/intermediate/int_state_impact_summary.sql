{{ config(materialized='table') }}

WITH source_data AS (
    SELECT
        "State" AS state,
        CAST(REPLACE("Houses_damaged", ',', '') AS INT) AS houses_damaged,
        CAST(REPLACE("People_affected", ',', '') AS INT) AS people_affected
    FROM {{ source('staging', 'sheet1') }}
)

SELECT
    state,
    SUM(houses_damaged) AS total_houses_damaged,
    SUM(people_affected) AS total_people_affected
FROM source_data
GROUP BY state
ORDER BY total_people_affected DESC