#!/bin/zsh

NAME=$1

DIR=`pwd`
if [ -f $DIR/public/index.php ]; then
    DIR=$DIR/public
fi
if [ -f $DIR/public_html/index.php ]; then
    DIR=$DIR/public_html
fi

DIR=`echo $DIR | /usr/local/bin/gsed 's/[]\/()$*.^|[]/\\&/g'`
SOURCE=`/usr/bin/dirname $0`/stub/nginx.site
CONF=/usr/local/etc/nginx/sites-available/$NAME.dev.conf
ENABLEDCONF=/usr/local/etc/nginx/sites-enabled/$NAME.dev.conf
echo "Let's get started."

for FILE in $ENABLEDCONF $CONF
do
	if [ -f $FILE ]; then
		/bin/rm $FILE;
	fi
done

/bin/cp $SOURCE $CONF;
/usr/local/bin/gsed -i "s/{name}/$NAME/g" $CONF;
/usr/local/bin/gsed -i "s/{path}/$DIR/g" $CONF;
/usr/local/bin/gsed -i "s/{path}/\//g" $CONF;
/bin/ln -s $CONF $ENABLEDCONF;
echo "$ENABLEDCONF created";
/usr/bin/vim $CONF;
echo "please restart nginx"
