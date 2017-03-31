if sunzi.installed 'mysql-server'; then
  echo 'mysql already installed, skipping.'
else
  apt-get -y update
  sunzi.install "mysql-server"
  sunzi.install "mysql-client"
  sunzi.install "libmysqlclient-dev"
  mysqladmin -uroot create <%= @attributes.mysql_database %>
  mysql -uroot -e "grant all on <%= @attributes.mysql_database %>.* to <%= @attributes.mysql_user %> identified by '<%= @attributes.mysql_password %>';"
  mysql -uroot -e "set password for root@localhost=password('<%= @attributes.mysql_password %>');"

  # MySQL to listen to connections from the IP address assigned to our droplet
  echo "bind-address   =  0.0.0.0" >> /etc/my.cnf
  service mysql reload
fi
