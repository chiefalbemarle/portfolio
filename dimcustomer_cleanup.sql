--dimcustomers
--concat function
--case when for gender
--alias and join for customer address data
SELECT
	   [CustomerKey]
      ,a.[GeographyKey]
	  --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] as FirstName
      --,[MiddleName]
      ,[LastName] as LastName
	  ,concat(firstname, ' ', lastname) as FullName
      --,[NameStyle]
      ,[BirthDate] as DOB
      --,[MaritalStatus]
      --,[Suffix]
      ,case
	   when (Gender='M') then ('Male') else ('Female') end as GenderLong
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      --,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,b.city
	  ,b.stateprovincecode
	  ,b.stateprovincename
	  ,b.countryregioncode
	  ,b.englishcountryregionname
	  ,b.postalcode
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] a
  left join
  dbo.dimgeography b
  on a.geographykey=b.geographykey
  order by firstname, lastname asc