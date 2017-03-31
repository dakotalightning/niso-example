# Install Database Server

# source recipes/mongodb-10gen.sh           # MongoDB
# apt-get -q -y install mysql-server-5.5    # MySQL 5.5 - You may need to enable Dotdeb in install.sh first
# apt-get -y install redis-server           # Redis - You may need to enable Dotdeb in install.sh first

niso.say 'mysql'
source recipes/mysql.sh

niso.say 'redis'
source recipes/redis.sh
