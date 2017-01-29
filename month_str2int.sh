#!/bin/bash
#
# many thanks to David Carlisle who did the complicate part in this script
# http://tex.stackexchange.com/questions/351103/convert-month-jan-or-month-jan-strings-in-bib-files-into-integer
#
# Get the latest version of this script on https://github.com/jonasstein/
# Comments and pullrequests are welcome too.
set -e

if [ "$#" -ne 1 ]; then
	echo "This tool will convert month={jan} and the like to month={1}"
	echo "Usage: month_str2int.sh <bibtex file>"
	echo "Error: Illegal number of parameters. Expected 1 parameter."
fi

echo "Convert $1 ..."
cp $1 $1.backup && echo "created backup file $1.backup"
sed --in-place -e 's/\(^ *month\) *= *["{]{*jan}*[}"]/\1 = "1"/i' $1 
sed --in-place -e 's/\(^ *month\) *= *["{]{*feb}*[}"]/\1 = "2"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*mar}*[}"]/\1 = "3"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*apr}*[}"]/\1 = "4"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*may}*[}"]/\1 = "5"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*jun}*[}"]/\1 = "6"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*jul}*[}"]/\1 = "7"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*aug}*[}"]/\1 = "8"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*sep}*[}"]/\1 = "9"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*oct}*[}"]/\1 = "10"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*nov}*[}"]/\1 = "11"/i' $1
sed --in-place -e 's/\(^ *month\) *= *["{]{*dec}*[}"]/\1 = "12"/i' $1

