name             'rsc_activemq'
maintainer       'Rightscale, Inc.'
maintainer_email 'ps@rightscale.com'
license          'Apache 2.0'
description      'Installs activemq and sets it up as service'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

%w(ubuntu debian redhat centos suse).each do |os|
  supports os
end

depends 'activemq'
depends 'java'

recipe 'rsc_activemq::default', 'Installs ActiveMQ and sets it up as a service.'

attribute 'activemq/mirror',
  :description => 'URL where to download ActiveMQ tarball.',
  :recipes     => ['rsc_activemq::default'],
  :type        => 'string',
  :display     => 'activemq/mirror',
  :required    => 'required'

attribute 'activemq/version',
  :description => 'Version of ActiveMQ to be installed.',
  :recipes     => ['rsc_activemq::default'],
  :type        => 'string',
  :display     => 'activemq/version',
  :required    => 'required'

attribute 'activemq/wrapper/keystore_password',
  :description => 'keystore password',
  :recipes     => ['rsc_activemq::default'],
  :type        => 'string',
  :display     => 'activemq/wrapper/keystore_password',
  :required    => 'required'

attribute 'activemq/wrapper/truststore_password',
  :description => 'truststore password',
  :recipes     => ['rsc_activemq::default'],
  :type        => 'string',
  :display     => 'activemq/wrapper/truststore_password',
  :required    => 'required'

  attribute 'activemq/webconsole_password',
    :description => 'Web console password to use for admin user',
    :recipes     => ['activemq::default'],
    :type        => 'string',
    :display     => 'activemq/webconsole_password',
    :required    => 'required'

attribute 'java/version',
  :display_name => 'JAVA JDK version to install',
  :description => 'Indicate the version of JAVA JDK you want to install, Example: 7',
  :recipes     => ['rsc_activemq::default'],
  :default =>'7',
  :required => 'optional'

attribute 'java/install_flavor',
  :display_name => 'JVM Flavor to install ',
  :description => "Support: openjdk, Default: openjdk",
  :recipes     => ['rsc_activemq::default'],
  :choice=> ['openjdk','oracle'],
  :required => 'required'
