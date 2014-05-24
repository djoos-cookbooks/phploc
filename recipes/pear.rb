#
# Cookbook Name:: phploc
# Recipe:: pear
#
# Copyright 2013-2014, Escape Studios
#

include_recipe 'php'

# PHP Extension and Application Repository PEAR channel
pearhub_chan = php_pear_channel 'pear.php.net' do
  action :update
end

# upgrade PEAR
php_pear 'PEAR' do
  channel pearhub_chan.channel_name
  action :upgrade
end

# eZ Enterprise components, Netpirates & Symfony2 PEAR channels
%w( components.ez.no pear.netpirates.net pear.symfony.com ).each do |chnl|
  php_pear_channel chnl do
    action :discover
  end
end

# PHPUnit PEAR channel
pearhub_chan = php_pear_channel 'pear.phpunit.de' do
  action :discover
end

# install/upgrade phploc
package = 'phploc'

# upgrade when package is installed and latest version is required
if !(`pear list | grep #{package}`.empty?) && node['phploc']['version'] == 'latest'
  action = :upgrade
else
  action = :install
end

php_pear package do
  channel pearhub_chan.channel_name
  version node['phploc']['version'] if node['phploc']['version'] != 'latest'
  action action
end
