#!/bin/bash
# ...............................Preparation (creating conf files)
# sudo mount /dev/nvme0n1p3 /media/
# mkdir /media/1
# cd /media/1
# touch file{0..99}.conf
# echo "nginx-01.com" | tee -a *.conf
# ...............................Renaming (backup + verification)
tar -zcvf confbackup.tar.gz *.conf
grep -lr -e 'nginx-01.com' . | xargs sed -i 's/nginx-01.com/nginx-02.com/g'
echo '************************************'
find . -name "*.conf" -exec grep "nginx-01" {} \;
