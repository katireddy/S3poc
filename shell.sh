#!/bin/bash
git status|tee log.txt >> /dev/null 2>&1
git add .|tee -a log.txt >> /dev/null 2>&1
echo Hello, Pls enter commit message
read varname
git commit -m "$varname"|tee -a log.txt >> /dev/null 2>&1
git push|tee -a log.txt >> /dev/null 2>&1
retVal=$?
if [ $retVal -ne 0 ]
then
    echo "Error"
else
    echo "@@@@@Be optimistic@@@@"
fi
exit $retVal

# generally enough >/dev/null see tee structure
#https://www.tecmint.com/delete-all-files-in-directory-except-one-few-file-extensions/
#rm -iv !(*.md)
