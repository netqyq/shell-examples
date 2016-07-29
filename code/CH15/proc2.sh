#proc2.sh
#!/bin/bash

echo "SUPPORTED FILESYSTEM TYPES:"
echo ---------------------------------------------------------
cat /proc/filesystems | awk -F'\t' '{print $2}'
