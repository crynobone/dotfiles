#!/bin/zsh

NAME=$1

# Get target project path
DIR=`pwd`
if [ -f $DIR/public/index.php ]; then
    DIR=$DIR/public
fi
if [ -f $DIR/public_html/index.php ]; then
    DIR=$DIR/public_html
fi

# Register available path
TARGET=$DIR
DIR=`echo $DIR | gsed 's/[]()$*^|[]/\\&/g'`
DIR=`echo $DIR | gsed 's/[]\/|[]/{h}/g'`
DIR=`echo $DIR | gsed 's/[].|[]/{d}/g'`
SOURCE=`dirname $0`/stub/nginx.site
CONF=/usr/local/etc/nginx/sites-available/$NAME.dev.conf
ENABLEDCONF=/usr/local/etc/nginx/sites-enabled/$NAME.dev.conf

for FILE in $ENABLEDCONF $CONF
do
	if [ -f $FILE ]; then
		rm $FILE
	fi
done

cp $SOURCE $CONF
gsed -i "s/{name}/$NAME/g" $CONF
gsed -i "s/{path}/$DIR/g" $CONF
gsed -i "s/{h}/\//g" $CONF
gsed -i "s/{d}/\./g" $CONF
ln -s $CONF $ENABLEDCONF

echo "Configuration: $ENABLEDCONF"
echo "Hostname: $NAME.dev"
echo "Path webroot: $TARGET"
echo "please restart nginx"
