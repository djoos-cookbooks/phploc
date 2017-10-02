#
# Cookbook Name:: phploc
# Recipe:: composer
#
# Copyright (c) 2016, David Joos
#

include_recipe 'composer'

install_dir = node['phploc']['install_dir']

# figure out what version to install
version = if node['phploc']['version'] != 'latest'
            node['phploc']['version']
          else
            '*.*.*'
          end

composer_install_global 'phploc/phploc' do
  install_dir install_dir
  version version
  bin_dir node['phploc']['prefix']
end
