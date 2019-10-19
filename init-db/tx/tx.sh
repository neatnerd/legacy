echo "(!) Connecting to DB & Creating tables..."
su - db2inst1 -c "db2 connect to tx && db2 -tvf /data/tx.sql"
echo "(!) Initialize complete"