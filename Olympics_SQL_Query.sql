/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ID]
      ,[Name] as 'Competitor name'
      , CASE WHEN Sex = 'M' then 'Male' else 'Female' END as [Sex]
      , CASE WHEN Age < 18 then 'Under 18'
			 WHEN Age between 18 and 25 then '18-25'
			 WHEN Age BETWEEN 25 and 30 then '25-30'
			 WHEN Age > 30 then 'Over 30' END as [Age Grouping]
      ,[Height]
      ,[Weight]
      ,[NOC] as 'Nation Code'
	  ,Left(Games,CHARINDEX(' ',Games)-1) as 'Year'
	  ,Right(Games,CHARINDEX(' ',Games)+1) as 'Season'
      ,[Games]
      ,[City]
      ,[Sport]
      ,[Event]
      ,Case When Medal = 'NA' then 'Not Registered' else Medal END as[Medal]
  FROM [olympic_games].[dbo].[athletes_event_results]
  WHERE Right(Games,CHARINDEX(' ',Games)+1) = 'Summer'