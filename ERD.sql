-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LU6zqp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE IF EXISTS dogecoin CASCADE;
DROP TABLE IF EXISTS dogeusd CASCADE;

CREATE TABLE "dogecoin" (
    "date" Date   NOT NULL,
    "open" Float   NOT NULL,
    "high" Float   NOT NULL,
    "low" Float   NOT NULL,
    "close" Float   NOT NULL,
    "volume" INT   NOT NULL,
    "market_cap" Float   NOT NULL,
    CONSTRAINT "pk_dogecoin" PRIMARY KEY (
        "date","open","high","low","close","volume"
     )
);

CREATE TABLE "dogeusd" (
    "date" Date   NOT NULL,
    "open" Float   NOT NULL,
    "high" Float   NOT NULL,
    "low" Float   NOT NULL,
    "close" Float   NOT NULL,
    "adj_close" Float   NOT NULL,
    "volume" INT   NOT NULL,
    CONSTRAINT "pk_dogeusd" PRIMARY KEY (
        "date","open","high","low","close","volume"
     )
);

ALTER TABLE "dogecoin" ADD CONSTRAINT "fk_dogecoin_date_open_high_low_close_volume" FOREIGN KEY("date", "open", "high", "low", "close", "volume")
REFERENCES "dogeusd" ("date", "open", "high", "low", "close", "volume");


SELECT * FROM dogecoin;
SELECT * FROM dogeusd;
