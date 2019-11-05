USE AdventureWorks;

CREATE TABLE HumanResources.JobCandidateHistory (
    JobCandidateID INT NOT NULL UNIQUE,
    Resume xml,
    Rating INT NOT NULL CHECK(Rating > 1 AND Rating < 10)  DEFAULT 5,
    RejectedDate DATETIME NOT NULL,
    ContactID INT FOREIGN KEY REFERENCES Person.Contact(ContactID)
);