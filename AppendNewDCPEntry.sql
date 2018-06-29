/*Appends new DCP MVC APP rows to contacts unless duplicate emails or phone is identified*/
INSERT INTO Contacts ([ContactFirstName], [ContactLastname], [ContactDCCCDID], [ContactStreet],  [ContactCity], [ContactState], [ContactZip],  [ContactMobilePhone], [ContactEmail], [ContactHighSchool])
SELECT dcp.StudentFirstName, dcp.StudentLastName, dcp.StudentID, dcp.Address, dcp.City, dcp.State, dcp.ZIPCode, dcp.StudentPhone, dcp.StudentEmail, dcp.HighSchoolName
FROM dcpMVCPledges dcp
WHERE NOT EXISTS
  (SELECT 1 FROM Contacts c WHERE c.[ContactEmail] = dcp.[StudentEmail] OR c.[ContactMobilePhone] = dcp.[StudentPhone]);
