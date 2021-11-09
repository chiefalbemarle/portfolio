--dimdate
--field aliases
--where clause for 2019 forward
SELECT
	 [DateKey]
      --,[FullDateAlternateKey]
      ,[DayNumberOfWeek] as DayofWeek
      ,[EnglishDayNameOfWeek] as Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] as DayofMonth
      ,[DayNumberOfYear] as DayofYear
      ,[WeekNumberOfYear] as WeekofYear
      ,[EnglishMonthName] as MonthName
	  ,left(englishmonthname,3) as MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] as MonthofYear
      ,[CalendarQuarter] as Quarter
	  ,[CalendarYear] as Year
      --,[CalendarSemester]
      ,[FiscalQuarter] as FiscalQuarter
      ,[FiscalYear] as FiscalYear
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear>=2019