#!/bin/bash
cd ~/scripts
httrack -i http://streamitv.multitvsolution.in/idvo/
cd http://streamitv.multitvsolution.in/idvo/
echo "" > IsPTV.m3u
echo "#EXTM3U" >> IsPTV.m3u
i=1
for x in [player]*.html; do
  var=$(cat $x | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*.[0-9]" | sort -u | head -1; echo "\n")
  echo "#EXTINF:-1, Channel $i" >> IPTV.m3u
  echo $var >> IsPTV.m3u
  i=$((i+1))
done
