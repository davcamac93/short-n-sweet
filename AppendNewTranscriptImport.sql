/* Appends TranscriptImport rows to contact unless email or ID match */
INSERT INTO Contacts ([ContactFirstName], [ContactLastname], [ContactDCCCDID], [ContactStreet], [ContactCity], [ContactState], [ContactZip], [ContactEmail], [ContactHighSchool], [ContactDOB], [ContactTranscript], [ContactTransDateRecvd])
SELECT t.FirstName, t.LastName, t.DCCCDID, t.Street, t.City, t.State, t.ZipCode, t.Email, t.HighSchool, t.DOB, t.TranReceived, t.TranDateReceived
FROM TranscriptImport t
WHERE NOT EXISTS
  (SELECT 1 FROM Contacts c WHERE c.[ContactEmail] = t.[Email] OR c.[ContactDCCCDID] = t.[DCCCDID]);
