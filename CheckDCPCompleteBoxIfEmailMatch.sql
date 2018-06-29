/*Checks DCP Complete box to 'YES' when emails match on Contacts and Salesforce DCP Complete*/
UPDATE Contacts
INNER JOIN SalesforceDCPComplete
ON Contacts.ContactEmail = SalesforceDCPComplete.Email
Set Contacts.DCPComplete = Yes;
