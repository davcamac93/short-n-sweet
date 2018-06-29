/*Check Applicant box to 'YES' when Status Type is 'Applicant'*/
UPDATE Contacts
SET Contacts.ContactApplicant = Yes
WHERE Contacts.ContactStatusType = 4;
