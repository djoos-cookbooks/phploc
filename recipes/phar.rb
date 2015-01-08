#
# Cookbook Name:: phploc
# Recipe:: phar
#
# Copyright 2013-2015, Escape Studios
#

remote_file "#{node['phploc']['install_dir']}/phploc" do
  source node['phploc']['phar_url']
  mode 0755
end
