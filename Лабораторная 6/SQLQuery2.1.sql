USE AdventureWorks
GO
ALTER TABLE HumanResources.JobCandidateHistory
NOCHECK CONSTRAINT [CK_JobCandidateHistory_Rating]
GO
ALTER TABLE HumanResources.JobCandidateHistory
NOCHECK CONSTRAINT [DF_JobCandidateHostory_Raiting]
GO

