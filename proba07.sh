for file in /home/sanclemente.local/a23josecp/*
do
	echo $file

if [ $file -d ]
then
	echo "Es un directorio"
else
	echo "Es un fichero"
fi
done
