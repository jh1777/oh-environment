sudo hping3 -2 -c 10 -p 5353 -i u1 192.168.178.99 -q >/dev/null 2>&1 
DEVICES=`arp -an | awk '{print $4}'`
IPHONEMAC=40:98:ad:98:d6:b9
if [[ ${DEVICES[*]} =~ $IPHONEMAC ]]
then
	echo OPEN
else
	echo CLOSED
fi
