#!/bin/bash
#
# Get list ok member worker
#

#echo "DEBUG: HAPROXY_SOCK: $HAPROXY_SOCK" >&2

# fetch mojk admin page
#/usr/local/bin/modjk




for worker in $(awk /Member/'{print $2}' /tmp/modjk_status|sed  's|name=||g'); do
felist="$felist,"'{"{#'${END}'_NAME}":"'$worker'"}'
done
echo '{"data":['${felist#,}']}'

#for frontend in $(echo "show stat" | socat ${HAPROXY_SOCK} stdio 2>/dev/null | grep -v "#" | grep "$END" | cut -d, -f1 | uniq); do
 #   felist="$felist,"'{"{#'${END}'_NAME}":"'$frontend'"}'
#done
#echo '{"data":['${felist#,}']}'
