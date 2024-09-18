

results=$(find ~/renamedir/*)



for result in $results;do
	export base=$result
	fname=`basename $base`
        dname="$(dirname "$result")"

	mv $result "${dname}/backup_${fname}"
done

