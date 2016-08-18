#cleanup ,version 2

LOG_DIR=/var/log

cd $LOG_DIR

cat /dev/null > messages
cat /dev/null > wtmp

echo "LOGS cleaned up."
exit
