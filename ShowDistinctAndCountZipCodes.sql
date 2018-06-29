SELECT  DISTINCT ZipCode, COUNT(*) AS 'Num'
FROM EstudiasDCPMVCComplete
GROUP BY ZipCode;
