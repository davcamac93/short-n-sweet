/*Checks DCP Pledge box to 'YES' when emails match on Contacts and dcpMVCPledges*/
UPDATE Contacts
INNER JOIN dcpMVCPledges
ON Contacts.ContactEmail = dcpMVCPledges.StudentEmail
Set Contacts.ContactPledgeCompleted = Yes
