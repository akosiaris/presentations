D=/here/is/the/jail
cd /usr/src
mkdir -p $D
make world DESTDIR=$D
make distribution DESTDIR=$D
mount -t devfs devfs $D/dev
jail $D myhostname 10.10.10.20 /etc/rc
