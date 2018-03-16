sudo hping3 -2 -c 10 -p 5353 -i u1 192.168.178.61 -q >/dev/null 2>&1 
DEVICES=`arp -an | awk '{print $4}'`
IPHONEMAC=7c:01:91:62:61:e5
if [[ ${DEVICES[*]} =~ $IPHONEMAC ]]
then
	echo OPEN
else
	echo CLOSED
fi
