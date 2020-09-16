#!/bin/bash
for dir in `cat /etc/passwd | egrep -v '(root|halt|sync|shutdown)' | awk -F: '($3 <= 1000 && $7 != "/usr/sbin/nologin") { print $6 }'`; do
dirperm=`ls -ld $dir | cut -f1 -d" "`
if [ `echo $dirperm | cut -c6 ` != "-" ]; then
 echo "Group Write permission set on directory $dir set to true"
 echo "Setting Group Write permission set on directory $dir to false"
 chmod g-w $dir
fi
if [ `echo $dirperm | cut -c8 ` != "-" ]; then
 echo "Other Read permission set on directory $dir set to true"
 echo "Setting Other Read permission set on directory $dir to false"
 chmod o-r $dir
fi
if [ `echo $dirperm | cut -c9 ` != "-" ]; then
 echo "Other Write permission set on directory $dir set to true"
 echo "Setting Other Write permission set on directory $dir to false"
 chmod o-w $dir
fi
if [ `echo $dirperm | cut -c10 ` != "-" ]; then
 echo "Other Execute permission set on directory $dir set to true"
 echo "Setting Other Execute permission set on directory $dir to false"
 chmod o-x $dir
fi
done
