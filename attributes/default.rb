#
# Cookbook Name:: phploc
# Attributes:: default
#
# Copyright (c) 2016, David Joos
#

default['phploc']['install_method'] = 'composer'
default['phploc']['version'] = 'latest'
default['phploc']['bin_dir'] = default['composer']['global_install']['bin_dir']
