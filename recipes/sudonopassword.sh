#setup sudo no password
#capistrano recommends nopassword sudo. This will allow the deploy users to execute certain commands without typing a password
#There could be security issues with this, mainly allowing the deploy user to install a script in /etc/init.d/ and run it as root.
#See https://github.com/TalkingQuickly/capistrano-3-rails-template/issues/6 for a discussion on this

if [ -e /etc/sudoers.d/<%= @attributes.deploy_user %> ]; then
  echo "sudo already set, skipping."
else
	mv files/nopassword_config /etc/sudoers.d/<%= @attributes.deploy_user %>
	chown root:root /etc/sudoers.d/<%= @attributes.deploy_user %>
	chmod 0440 /etc/sudoers.d/<%= @attributes.deploy_user %>
fi
