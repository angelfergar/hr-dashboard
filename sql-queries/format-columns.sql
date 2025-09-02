-- Add columns to parse the dates
ALTER TABLE `hr-project-470820.HR_Data.RawData` ADD COLUMN DOB_format DATE;
ALTER TABLE `hr-project-470820.HR_Data.RawData` ADD COLUMN DateofHire_format DATE;
ALTER TABLE `hr-project-470820.HR_Data.RawData` ADD COLUMN DateofTermination_format DATE;
ALTER TABLE `hr-project-470820.HR_Data.RawData` ADD COLUMN LastPerformanceReview_Date_format DATE;
ALTER TABLE `hr-project-470820.HR_Data.RawData` ADD COLUMN ManagerID_format INT;

-- Format the dates
UPDATE `hr-project-470820.HR_Data.RawData`
SET 
DOB_format = PARSE_DATE('%m/%d/%Y ', DOB),
DateofHire_format = PARSE_DATE('%m/%d/%Y', DateofHire),
DateofTermination_format = PARSE_DATE('%m/%d/%Y ', DateofTermination),
LastPerformanceReview_Date_format = PARSE_DATE('%m/%d/%Y ', LastPerformanceReview_Date),
ManagerID_format = CAST(ManagerID AS INT)
WHERE TRUE;

-- Remove the columns where the date was a string
ALTER TABLE `hr-project-470820.HR_Data.RawData` DROP COLUMN DOB;
ALTER TABLE `hr-project-470820.HR_Data.RawData` DROP COLUMN DateofHire;
ALTER TABLE `hr-project-470820.HR_Data.RawData` DROP COLUMN DateofTermination;
ALTER TABLE `hr-project-470820.HR_Data.RawData` DROP COLUMN LastPerformanceReview_Date;
ALTER TABLE `hr-project-470820.HR_Data.RawData` DROP COLUMN ManagerID;

-- Rename the new columns to match the old ones
ALTER TABLE `hr-project-470820.HR_Data.RawData` RENAME COLUMN DOB_format TO DOB;
ALTER TABLE `hr-project-470820.HR_Data.RawData` RENAME COLUMN DateofHire_format TO DateofHire;
ALTER TABLE `hr-project-470820.HR_Data.RawData` RENAME COLUMN DateofTermination_format TO DateofTermination;
ALTER TABLE `hr-project-470820.HR_Data.RawData` RENAME COLUMN LastPerformanceReview_Date_format TO LastPerformanceReview_Date; 
ALTER TABLE `hr-project-470820.HR_Data.RawData` RENAME COLUMN ManagerID_format TO ManagerID;