CLOSE data
USE f:\g\prodsch.DBF SHARED
SELECT COUNT(*) FROM prodsch WHERE origschdat=date() and (val(cust)>0 OR CUST='SMART') and shipping=0  AND (LEFT(style,1)='*' OR stock='Y' OR !EMPTY(LC1))
SELECT tracking FROM prodsch WHERE origschdat=date() and (val(cust)>0 OR CUST='SMART') and shipping=0  AND (LEFT(style,1)='*' OR stock='Y' OR !EMPTY(LC1)) ORDER BY tracking
COPY TO f:\jar\ship TYPE csv
CLOSE data
