ALTER SESSION SET CONTAINER=ACCOUNTS;
CREATE USER ANALYST IDENTIFIED BY analyst;
GRANT ALL PRIVILEGES TO ANALYST;
ALTER USER ANALYST QUOTA UNLIMITED ON USERS;
exit;