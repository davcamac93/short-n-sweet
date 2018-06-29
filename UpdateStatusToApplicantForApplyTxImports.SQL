/*Sets Status Type to 'Applicant' for ApplyTx Imports*/
UPDATE Contacts
SET Contacts.ContactStatusType = 4
WHERE Contacts.ContactStatusType IS NULL;
