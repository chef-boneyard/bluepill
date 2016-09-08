name 'bluepill'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs bluepill gem and configures to manage services, includes bluepill_service LWRP'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.0.0'
recipe 'bluepill::default', 'Installs bluepill rubygem and sets up management directories'

depends 'rsyslog', '>= 2.0'

source_url 'https://github.com/chef-cookbooks/bluepill'
issues_url 'https://github.com/chef-cookbooks/bluepill/issues'

chef_version '>= 12.1'
