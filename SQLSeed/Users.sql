DROP TABLE IF EXISTS UnicornApiSchema.Users;

-- IF OBJECT_ID('UnicornApiSchema.Users') IS NOT NULL
--     DROP TABLE UnicornApiSchema.Users;

CREATE TABLE UnicornApiSchema.Users
(
    UserId INT PRIMARY KEY
    , FirstName VARCHAR(50)
    , LastName VARCHAR(50)
    , Email VARCHAR(50) UNIQUE
    , Gender VARCHAR(50)
    , Active BIT
);

DROP TABLE IF EXISTS UnicornApiSchema.UserSalary;

-- IF OBJECT_ID('UnicornApiSchema.UserSalary') IS NOT NULL
--     DROP TABLE UnicornApiSchema.UserSalary;

CREATE TABLE UnicornApiSchema.UserSalary
(
    UserId INT UNIQUE
    , Salary DECIMAL(18, 4)
);

DROP TABLE IF EXISTS UnicornApiSchema.UserJobInfo;

-- IF OBJECT_ID('UnicornApiSchema.UserJobInfo') IS NOT NULL
--     DROP TABLE UnicornApiSchema.UserJobInfo;

CREATE TABLE UnicornApiSchema.UserJobInfo
(
    UserId INT UNIQUE
    , JobTitle VARCHAR(50)
    , Department VARCHAR(50)
);

-- USE DotNetCourseDatabase;
-- GO

-- SELECT  [UserId]
--         , [FirstName]
--         , [LastName]
--         , [Email]
--         , [Gender]
--         , [Active]
--   FROM  UnicornApiSchema.Users;

-- SELECT  [UserId]
--         , [Salary]
--   FROM  UnicornApiSchema.UserSalary;

-- SELECT  [UserId]
--         , [JobTitle]
--         , [Department]
--   FROM  UnicornApiSchema.UserJobInfo;
