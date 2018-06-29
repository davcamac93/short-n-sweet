/* Appends  SalesforceDCPComplete rows to contact unless email or ID match */
INSERT INTO Contacts ([ContactFirstName], [ContactLastname], [ContactDCCCDID], [ContactEmail], [ContactHighSchool])
SELECT dcp.FirstName, dcp.LastName, dcp.DCCCDID, dcp.Email, dcp.HighSchool
FROM SalesforceDCPComplete dcp
WHERE NOT EXISTS
  (SELECT 1 FROM Contacts c WHERE c.[ContactEmail] = dcp.[Email] OR c.[ContactDCCCDID] = dcp.[DCCCDID]);
