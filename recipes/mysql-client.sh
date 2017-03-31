if sunzi.installed 'mysql-client'; then
  echo 'mysql already installed, skipping.'
else
  apt-get -y update
  sunzi.install "mysql-client"
  sunzi.install "libmysqlclient-dev"
fi
