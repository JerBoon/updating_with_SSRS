USE [Jer];
GO

CREATE TABLE dbo.questionnaire  (
  [Q Number]   INT,
  [Q Text]     VARCHAR(100),
  [Q Response] VARCHAR(5)
);
GO

INSERT INTO dbo.questionnaire
([Q Number],[Q Text])
VALUES
(1,'Do you like this report?'),
(2,'Will you use this report again?'),
(3,'Will you tell your friends about this report?')
;
GO
