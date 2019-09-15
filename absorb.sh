#!/usr/bin/zsh

for i in $(find . -type f | grep "\./_.*")
do
	f=${i:3}
	[ -e ~/.$f ] && cp ~/.$f _$f
done
