#!/bin/bash
curl $1 > playlist.tmp

ROWS=`cat playlist.tmp | grep /watch?v=`

if [ -f links.tmp ]
then
  rm links.tmp
fi

for ROW in $ROWS
do
  ROW=${ROW#*\"}
  ROW=${ROW%%&*}
  echo $ROW >> links.tmp
done

VIDEOS=`cat links.tmp | grep ^/watch | uniq`

for VIDEO in $VIDEOS
do
  youtube-dl http://www.youtube.com${VIDEO} --extract-audio --audio-format mp3
done

rm links.tmp playlist.tmp
