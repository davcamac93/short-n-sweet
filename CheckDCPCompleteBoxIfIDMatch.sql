/*Checks DCP Complete box to 'YES' when IDs match on Contacts and Salesforce DCP Complete*/
UPDATE Contacts
INNER JOIN SalesforceDCPComplete
ON Contacts.ContactDCCCDID = SalesforceDCPComplete.DCCCDID
Set Contacts.DCPComplete = Yes;
