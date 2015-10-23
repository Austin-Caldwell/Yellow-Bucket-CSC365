/* Austin Caldwell and Evan Wehr */
-- Updated 10/22/2015

USE YellowBucketCSC365
GO

CREATE TABLE Movie -- Create a table of movies
(
	movieID int PRIMARY KEY IDENTITY(0000,1) NOT NULL,
	title varchar(64) NOT NULL,
	movieDescription varchar(256) NOT NULL,
	avgRating decimal(2,1) CONSTRAINT avgRating_Default DEFAULT 0 CONSTRAINT avgRating_CC CHECK(avgRating >= 0 AND avgRating <=5) NOT NULL,
	director varchar(32) NOT NULL,
	studio varchar(32) NOT NULL,
	runTime int CONSTRAINT runTime_CC Check(runTime >= 0) NOT NULL,
	parentalRating varchar(8) NOT NULL,
	genre varchar(32) NOT NULL,
	releaseDate date NOT NULL,
	coverPhoto varbinary(max) NULL
);