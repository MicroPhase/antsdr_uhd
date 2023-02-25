#!/bin/sh

cd /root
rm -f /root/latest /root/*.zip /root/*.frm

# get the location of the latest release
wget https://api.github.com/repos/analogdevicesinc/plutosdr-fw/releases/latest
if [ "$?" -ne "0" ] ; then
	echo "Error talking to github - is this pluto on the internet?"
	exit
fi
if [ ! -f "latest" ] ; then
	echo "downloaded file missing"
	exit
fi
# get the FIRMWARE file name
FIRMWARE=$(grep "name.*plutosdr-fw-" latest | cut -d : -f 2,3 | tr -d \", | sed 's/^ //g')
if [ -z "${FIRMWARE}" ] ; then
	echo "Error parsing download file name - please report a bug"
	exit
fi
# get the FIRMWARE URL
URL=$(grep "browser_download_url.*plutosdr-fw-" latest | cut -d : -f 2,3 | awk '{print $1}' | tr -d \")
if [ -z "${URL}" ] ; then
	echo "Error parsing download url - please report a bug"
	exit
fi
# get the URL
wget ${URL}
if [ "$?" -ne "0" ] ; then
	echo "Error talking to github - is this pluto on the internet?"
	exit
fi
if [ ! -f "${FIRMWARE}" ] ; then
	echo "Can not find downloaded file - report a bug"
	exit
fi
# find the frm inside the zip file
FILE=$(unzip -l "${FIRMWARE}" | grep frm | sort -nr | head -1 | awk '{print $NF}')
if [ -z "${FILE}" ] ; then
	echo "not sure which file to extract - report a bug"
	exit
fi
# upzip it
unzip ${FIRMWARE} ${FILE}
if [ "$?" -ne "0" ] ; then
	echo "Error unzipping ${FILE} from ${FIRMWARE}"
	exit
fi
if [ ! -f ${FILE} ] ; then
	echo "Can not file file to write to flash"
	exit
fi

# write to flash
update_frm.sh /root/${FILE}

echo "Reboot your system to run the new firmware"
