#
# Cookbook Name:: phploc
# Attributes:: composer
#
# Copyright (c) 2016, David Joos
#

default['phploc']['install_dir'] = default['composer']['global_install']['install_dir']
if default['phploc']['install_method'] == 'composer'
  default['phploc']['bin_dir'] = default['composer']['global_install']['bin_dir']
end
