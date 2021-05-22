-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LU6zqp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "dogecoin" (
    "date" Date   NOT NULL,
    "open" Float   NOT NULL,
    "high" Float   NOT NULL,
    "low" Float   NOT NULL,
    "close" Float   NOT NULL,
    "volume" BIGINT   NOT NULL,
    "market_cap" Float   NOT NULL,
    CONSTRAINT "pk_dogecoin" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "dogeusd" (
    "date" Date   NOT NULL,
    "open" Float   NOT NULL,
    "high" Float   NOT NULL,
    "low" Float   NOT NULL,
    "close" Float   NOT NULL,
    "adj_close" Float   NOT NULL,
    "volume" BIGINT   NOT NULL,
    CONSTRAINT "pk_dogeusd" PRIMARY KEY (
        "date"
     )
);