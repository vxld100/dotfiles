#/bin/sh

target="$HOME"

for file in $(find . | grep -v populateconfig.sh | grep -v ".git/*"); do
	destfile="$target/${file#./}"
	if [ ! -e $destfile ]; then
		if [ -d $file ]; then
			mkdir -p $destfile
			echo "Made directory: $destfile"
		elif [ -f $file ]; then
			ln $file $destfile
			echo "Linked file: $destfile"
		fi
	fi
done

echo "Successfully populated config files!"
