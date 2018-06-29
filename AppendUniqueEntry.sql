/* Appends myExcelImport rows to Contacts unless duplicate email or phone is identified */
INSERT INTO Contacts ([ContactFirstName], [ContactLastname], [ContactStreet], [ContactAltAddress], [ContactCity], [ContactState], [ContactZip],  [ContactMobilePhone], [ContactEmail], [ContactHighSchool])
SELECT e.[FIRST-NM],  e.[LAST-NM], e.[PERM-ADDR1], e.[PERM-ADDR2], e.[PERM-CITY], e.[PERM-STATE], e.[ZIP], e.[PERM-PHONE], e.[EMAIL], e.[HS-NAME]
FROM MyExcelImport e
WHERE NOT EXISTS
  (SELECT 1 FROM Contacts c WHERE c.[ContactEmail] = e.[EMAIL] OR c.[ContactMobilePhone] = e.[PERM-PHONE]);
