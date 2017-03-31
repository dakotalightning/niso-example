# Install Web server

apt-get -y install nginx        # Nginx
# apt-get -y install apache2    # Apache

niso.say 'checking RAILS_ENV'
if ! grep -Fq "RAILS_ENV" ~/.bash_profile; then
  echo 'Setting up RAILS_ENV...'
  echo "export RAILS_ENV=$environment" >> ~/.bash_profile
  source ~/.bash_profile
  echo 'gem: --no-ri --no-rdoc' > ~/.gemrc
else
  niso.say 'RAILS_ENV ok'
fi

niso.say 'nginx'
source recipes/nginx.sh

niso.say 'rbenv ruby version <%= @attributes.ruby_version %>'
source recipes/rbenv.sh <%= @attributes.ruby_version %>

niso.say 'mysql-client'
source recipes/mysql-client.sh

niso.say 'nodejs'
source recipes/nodejs.sh
