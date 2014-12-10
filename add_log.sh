log_file=/data/log/job.log

echo "############"`date +%F` `date +%T` " start ##########" >> $log_file
# commands , jobs
echo "test" >> $log_file 2>&1
# commands

echo "############"`date +%F` `date +%T`" end #############" >> $log_file
echo "" >> $log_file
