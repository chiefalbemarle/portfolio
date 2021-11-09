--dimproducts
--null values in productsubcategorykey illustrate need for left join
--join through subcategory due to mapping/architecturee
--this is odd to me in that product maps to subcategory before category
--cast first before isnull due to field length
SELECT TOP (1000) [ProductKey]
      ,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName]
	  ,b.EnglishProductSubcategoryName
	  ,c.EnglishProductCategoryName
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName]
      --,[LargePhoto]
      ,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
	  ,isnull(cast([status] as nvarchar(8)),'Outdated') as status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] a
  left join [dbo].[DimProductSubcategory] b
  on a.ProductSubcategoryKey=b.ProductSubcategoryKey
  left join [dbo].[DimProductCategory] c
  on b.ProductCategoryKey=c.ProductCategoryKey