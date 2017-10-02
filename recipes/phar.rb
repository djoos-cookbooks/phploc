#
# Cookbook Name:: phploc
# Recipe:: phar
#
# Copyright (c) 2016, David Joos
#

include_recipe 'php'

remote_file "#{node['phploc']['bin_dir']}/phploc" do
  source node['phploc']['phar_url']
  mode 0755
end
