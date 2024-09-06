DROP TABLE IF EXISTS `database`.`gab_use_case_results`;
CREATE EXTERNAL TABLE `database`.`gab_use_case_results`
(
`query_id` STRING COMMENT 'Query ID for the use case',
`cadence` STRING COMMENT 'Cadence of data granularity (Day/Week/Month/Quarter/Year)',
`from_date` DATE COMMENT 'Aggregate based on the date column',
`to_date` DATE COMMENT 'Snapshot end date',
`d1` STRING COMMENT 'Dimension 1',
`d2` STRING COMMENT 'Dimension 2',
`d3` STRING COMMENT 'Dimension 3',
`d4` STRING COMMENT 'Dimension 4',
`d5` STRING COMMENT 'Dimension 5',
`d6` STRING COMMENT 'Dimension 6',
`d7` STRING COMMENT 'Dimension 7',
`d8` STRING COMMENT 'Dimension 8',
`d9` STRING COMMENT 'Dimension 9',
`d10` STRING COMMENT 'Dimension 10',
`d11` STRING COMMENT 'Dimension 11',
`d12` STRING COMMENT 'Dimension 12',
`d13` STRING COMMENT 'Dimension 13',
`d14` STRING COMMENT 'Dimension 14',
`d15` STRING COMMENT 'Dimension 15',
`d16` STRING COMMENT 'Dimension 16',
`d17` STRING COMMENT 'Dimension 17',
`d18` STRING COMMENT 'Dimension 18',
`d19` STRING COMMENT 'Dimension 19',
`d20` STRING COMMENT 'Dimension 20',
`d21` STRING COMMENT 'Dimension 21',
`d22` STRING COMMENT 'Dimension 22',
`d23` STRING COMMENT 'Dimension 23',
`d24` STRING COMMENT 'Dimension 24',
`d25` STRING COMMENT 'Dimension 25',
`d26` STRING COMMENT 'Dimension 26',
`d27` STRING COMMENT 'Dimension 27',
`d28` STRING COMMENT 'Dimension 28',
`d29` STRING COMMENT 'Dimension 29',
`d30` STRING COMMENT 'Dimension 30',
`d31` STRING COMMENT 'Dimension 31',
`d32` STRING COMMENT 'Dimension 32',
`d33` STRING COMMENT 'Dimension 33',
`d34` STRING COMMENT 'Dimension 34',
`d35` STRING COMMENT 'Dimension 35',
`d36` STRING COMMENT 'Dimension 36',
`d37` STRING COMMENT 'Dimension 37',
`d38` STRING COMMENT 'Dimension 38',
`d39` STRING COMMENT 'Dimension 39',
`d40` STRING COMMENT 'Dimension 40',
`m1` DOUBLE COMMENT 'Metric 1',
`m2` DOUBLE COMMENT 'Metric 2',
`m3` DOUBLE COMMENT 'Metric 3',
`m4` DOUBLE COMMENT 'Metric 4',
`m5` DOUBLE COMMENT 'Metric 5',
`m6` DOUBLE COMMENT 'Metric 6',
`m7` DOUBLE COMMENT 'Metric 7',
`m8` DOUBLE COMMENT 'Metric 8',
`m9` DOUBLE COMMENT 'Metric 9',
`m10` DOUBLE COMMENT 'Metric 10',
`m11` DOUBLE COMMENT 'Metric 11',
`m12` DOUBLE COMMENT 'Metric 12',
`m13` DOUBLE COMMENT 'Metric 13',
`m14` DOUBLE COMMENT 'Metric 14',
`m15` DOUBLE COMMENT 'Metric 15',
`m16` DOUBLE COMMENT 'Metric 16',
`m17` DOUBLE COMMENT 'Metric 17',
`m18` DOUBLE COMMENT 'Metric 18',
`m19` DOUBLE COMMENT 'Metric 19',
`m20` DOUBLE COMMENT 'Metric 20',
`m21` DOUBLE COMMENT 'Metric 21',
`m22` DOUBLE COMMENT 'Metric 22',
`m23` DOUBLE COMMENT 'Metric 23',
`m24` DOUBLE COMMENT 'Metric 24',
`m25` DOUBLE COMMENT 'Metric 25',
`m26` DOUBLE COMMENT 'Metric 26',
`m27` DOUBLE COMMENT 'Metric 27',
`m28` DOUBLE COMMENT 'Metric 28',
`m29` DOUBLE COMMENT 'Metric 29',
`m30` DOUBLE COMMENT 'Metric 30',
`m31` DOUBLE COMMENT 'Metric 31',
`m32` DOUBLE COMMENT 'Metric 32',
`m33` DOUBLE COMMENT 'Metric 33',
`m34` DOUBLE COMMENT 'Metric 34',
`m35` DOUBLE COMMENT 'Metric 35',
`m36` DOUBLE COMMENT 'Metric 36',
`m37` DOUBLE COMMENT 'Metric 37',
`m38` DOUBLE COMMENT 'Metric 38',
`m39` DOUBLE COMMENT 'Metric 39',
`m40` DOUBLE COMMENT 'Metric 40',
`lh_created_on` TIMESTAMP COMMENT 'This field stores the created_on in lakehouse'
)
USING DELTA
PARTITIONED BY (query_id)
LOCATION 's3://my-data-product-bucket/gab_use_case_results'
COMMENT 'This table is the common table for all use cases and stores all the dimensions and metrics'
TBLPROPERTIES(
  'lakehouse.primary_key'='query_id,cadence,to_date,from_date',
  'delta.enableChangeDataFeed'='false'
)