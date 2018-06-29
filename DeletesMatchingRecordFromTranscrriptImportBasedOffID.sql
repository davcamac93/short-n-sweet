/* Deletes rows from TranscriptImport if matching in Contacts based off ID */
DELETE TranscriptImport
FROM TranscriptImport
INNER JOIN Contacts
ON TranscriptImport.DCCCDID = Contacts.ContactDCCCDID;
