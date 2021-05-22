-- drop pre-existing tables

DROP TABLE IF EXISTS dogecoin CASCADE;
DROP TABLE IF EXISTS dogeusd CASCADE;

-- create new tables

CREATE TABLE "dogecoin" (
    "date" DATE   NOT NULL,
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
    "date" DATE   NOT NULL,
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



-- perform full outer join, using date as primary column

SELECT dogecoin.open as "dogecoin open", 
dogecoin.close as "dogecoin close",
dogecoin.high as "dogecoin high",
dogecoin.low as "dogecoin low",
dogecoin.volume as "dogecoin volume", 
dogeusd.open as "dogeusd open",
dogeusd.close as "dogeusd close",
dogeusd.high as "dogeusd high",
dogeusd.low as "dogeusd low",
dogeusd.volume as "dogeusd volume",
dogecoin.market_cap, 
dogeusd.adj_close


From dogeusd
Full outer join dogecoin
on dogecoin.date = dogeusd.date;

