echo "(!) Connecting to DB & Creating tables..."
su - db2inst1 -c "/database/config/db2inst1/sqllib/bin/db2 -tvf /var/custom/tx.sql"
echo "(!) Initialize complete"