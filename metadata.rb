name 'phploc'
maintainer 'David Joos'
maintainer_email 'development@davidjoos.com'
license 'MIT'
description 'Installs/Configures phploc'
version '2.1.1'

%w(debian ubuntu redhat centos fedora scientific amazon).each do |os|
  supports os
end

source_url 'https://github.com/djoos-cookbooks/phploc'
issues_url 'https://github.com/djoos-cookbooks/phploc/issues'

depends 'php'
depends 'composer'
