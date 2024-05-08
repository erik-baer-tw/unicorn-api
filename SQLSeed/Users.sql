DROP TABLE IF EXISTS unicornapischema.Users;

-- IF OBJECT_ID('unicornapischema.Users') IS NOT NULL
--     DROP TABLE unicornapischema.Users;

CREATE TABLE unicornapischema.Users
(
    UserId INT PRIMARY KEY
    , FirstName VARCHAR(50)
    , LastName VARCHAR(50)
    , Email VARCHAR(50) UNIQUE
    , Gender VARCHAR(50)
    , Active BIT
);

DROP TABLE IF EXISTS unicornapischema.UserSalary;

-- IF OBJECT_ID('unicornapischema.UserSalary') IS NOT NULL
--     DROP TABLE unicornapischema.UserSalary;

CREATE TABLE unicornapischema.UserSalary
(
    UserId INT UNIQUE
    , Salary DECIMAL(18, 4)
);

DROP TABLE IF EXISTS unicornapischema.UserJobInfo;

-- IF OBJECT_ID('unicornapischema.UserJobInfo') IS NOT NULL
--     DROP TABLE unicornapischema.UserJobInfo;

CREATE TABLE unicornapischema.UserJobInfo
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
--   FROM  unicornapischema.Users;

-- SELECT  [UserId]
--         , [Salary]
--   FROM  unicornapischema.UserSalary;

-- SELECT  [UserId]
--         , [JobTitle]
--         , [Department]
--   FROM  unicornapischema.UserJobInfo;
