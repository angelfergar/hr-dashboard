-- Delete tables to create the model again
DROP TABLE IF EXISTS `hr-project-470820.HR_Data.Employees`;
DROP TABLE IF EXISTS `hr-project-470820.HR_Data.Demographics`;
DROP TABLE IF EXISTS `hr-project-470820.HR_Data.Managers`;
DROP TABLE IF EXISTS `hr-project-470820.HR_Data.Jobs`;
DROP TABLE IF EXISTS `hr-project-470820.HR_Data.EmploymentStatus`;
DROP TABLE IF EXISTS `hr-project-470820.HR_Data.Performance`;

-- Employees table
CREATE TABLE `hr-project-470820.HR_Data.Employees` AS
SELECT
  EmpID,
  JobID,
  ManagerID,
  Salary
FROM `hr-project-470820.HR_Data.RawData`
WHERE EmpID IS NOT NULL;

-- Demographics table
CREATE TABLE `hr-project-470820.HR_Data.Demographics` AS
SELECT
  EmpID,
  DOB,
  Sex,
  State,
  RaceDesc,
  CitizenDesc,
  MaritalDesc
FROM `hr-project-470820.HR_Data.RawData`
WHERE EmpID IS NOT NULL;

-- Managers table
CREATE TABLE `hr-project-470820.HR_Data.Managers` AS
SELECT DISTINCT
  ManagerID,
  ManagerName
FROM `hr-project-470820.HR_Data.RawData`
WHERE ManagerID IS NOT NULL;

-- Jobs table
CREATE TABLE `hr-project-470820.HR_Data.Jobs` AS
SELECT DISTINCT
  JobID,
  Position,
  Department
FROM `hr-project-470820.HR_Data.RawData`
WHERE JobID IS NOT NULL;

-- EmploymentStatus table
CREATE TABLE `hr-project-470820.HR_Data.EmploymentStatus` AS
SELECT
  EmpID,
  EmploymentStatus,
  DateofHire,
  RecruitmentSource,
  DateofTermination,
  TermReason
FROM `hr-project-470820.HR_Data.RawData`
WHERE EmpID IS NOT NULL;

--Performance table
CREATE TABLE `hr-project-470820.HR_Data.Performance` AS
SELECT
  EmpID,
  LastPerformanceReview_Date,
  PerformanceScore,
  SpecialProjectsCount,
  EngagementSurvey,
  EmpSatisfaction,
  DaysLateLast30,
  Absences
FROM `hr-project-470820.HR_Data.RawData`
WHERE EmpID IS NOT NULL;