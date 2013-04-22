#
# Cookbook Name:: phploc
# Attributes:: default
#
# Copyright 2013, Escape Studios
#

default[:phploc][:install_method] = "pear"
default[:phploc][:version] = "latest"

#composer install only
default[:phploc][:prefix] = "/usr/bin"

#phar install only
default[:phploc][:phar_url] = "http://pear.phpunit.de/get/phploc.phar"
default[:phploc][:install_dir] = ""