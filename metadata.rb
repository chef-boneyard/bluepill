name 'bluepill'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs bluepill gem and configures to manage services, includes bluepill_service LWRP'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.4.0'
recipe 'bluepill::default', 'Installs bluepill rubygem and sets up management directories'

depends 'rsyslog'

source_url 'https://github.com/chef-cookbooks/bluepill' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/bluepill/issues' if respond_to?(:issues_url)
