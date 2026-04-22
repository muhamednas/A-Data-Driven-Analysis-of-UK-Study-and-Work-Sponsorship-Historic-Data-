
-- 1. Study_ByInstitutionType_Clean

IF OBJECT_ID('[Study_ByInstitutionType_Clean]', 'U') IS NOT NULL
    DROP TABLE [Study_ByInstitutionType_Clean];

SELECT 
    [Year],
    [Quarter],
    [Type_of_application] AS [Visa_Type],
    [Institution_type_group] AS [Institution_Type_Group],
    [Institution_type] AS [Institution_Type],
    CAST([Applications] AS INT) AS [Applications]
INTO [Study_ByInstitutionType_Clean]
FROM [Study_ByInstitutionType];


-- 2. Study_ByNationality_Clean

IF OBJECT_ID('[Study_ByNationality_Clean]', 'U') IS NOT NULL
    DROP TABLE [Study_ByNationality_Clean];

SELECT 
    [Year],
    [Quarter],
    [Type_of_application] AS [Visa_Type],
    [Institution_type_group] AS [Institution_Type_Group],
    [Geographical_region] AS [Geographical_Region],
    [Nationality],
    CAST([Applications] AS INT) AS [Applications]
INTO [Study_ByNationality_Clean]
FROM [Study_ByNationality];



-- 3. Work_ByIndustry_Clean

IF OBJECT_ID('[Work_ByIndustry_Clean]', 'U') IS NOT NULL
    DROP TABLE [Work_ByIndustry_Clean];

SELECT 
    [Year],
    [Quarter],
    [Type_of_application] AS [Visa_Type],
    [Category_of_leave] AS [Visa_Category],
    [Industry],
    CAST([Applications] AS INT) AS [Applications]
INTO [Work_ByIndustry_Clean]
FROM [Work_ByIndustry];



-- 4. Work_ByNationality_Clean

IF OBJECT_ID('[Work_ByNationality_Clean]', 'U') IS NOT NULL
    DROP TABLE [Work_ByNationality_Clean];

SELECT 
    [Year],
    [Quarter],
    [Type_of_application] AS [Visa_Type],
    [Category_of_leave] AS [Visa_Category],
    [Geographical_region] AS [Geographical_Region],
    [Nationality],
    CAST([Applications] AS INT) AS [Applications]
INTO [Work_ByNationality_Clean]
FROM [Work_ByNationality];
