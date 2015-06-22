name 'phploc'
maintainer 'Escape Studios'
maintainer_email 'dev@escapestudios.com'
license 'MIT'
description 'Installs/Configures phploc'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.0.1'

%w( debian ubuntu redhat centos fedora scientific amazon ).each do |os|
  supports os
end

depends 'php'
depends 'composer'

recipe 'phploc', 'Installs phploc.'
recipe 'phploc::composer', 'Installs phploc using composer.'
recipe 'phploc::phar', 'Installs phploc using phar.'
