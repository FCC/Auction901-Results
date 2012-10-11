-- Table: auction901.bids
--Item Name|Geo Id|State|County|Bidder|dollar Road Mile|Net dollar Road Mile|Road Miles|Total Bid Amount|Bid Date/Time|Winning Bid

DROP TABLE if exists auction901.bids;
CREATE TABLE auction901.bids
(
  itemname character varying(20),
  geo_id numeric,
  state character varying(2),
  county character varying(200),
  bid character varying(200),
  dollars_per_mile numeric,
  net_dollars_per_mile numeric,
  road_miles numeric,
  total_bid_amount numeric,
)
WITH (
  OIDS=true
);
ALTER TABLE auction901.bids OWNER TO postgres;
COMMENT ON TABLE auction901.attach_a IS 'some comment';

copy auction901.bids
  from '/Users/.../Documents/auction901-results.csv'
  csv header delimiter '|';

