rsc_activemq Cookbook [![Build Status](https://travis-ci.org/RightScale-Services-Cookbooks/rsc_activemq.svg?branch=master)](https://travis-ci.org/RightScale-Services-Cookbooks/rsc_activemq)
================
Installs ActiveMQ and sets it up as a service.


Requirements
------------

This cookbook has been verified to work with:
* Ubuntu 14.04
* CentOS 6.5

Recipes
-------

| Name                    | Description                                    |
|-------------------------|------------------------------------------------|
| `rsc_activemq::default` | Installs ActiveMQ and sets it up as a service. |


Inputs
------

| Name                                   | Description                           |
|----------------------------------------|---------------------------------------|
| `activemq/mirror`                      | URL where to download ActiveMQ tar    |
| `activemq/version`                     | Version of ActiveMQ to be installed   |
| `activemq/wrapper/keystore_password`   | Keystore password                     |
| `activemq/wrapper/truststore_password` | Truststore password                   |
| `activemq/webconsole_password`         | Web console password for admin user   |
| `java/version`                         | Version of JAVA JDK to be installed   |
| `java/install_flavor`                  | Version of Java to install            |



Usage
-----

Include default recipe listed above and supply required inputs.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github


License and Authors
-------------------
RightScale Professional Services `<ps@rightscale.com>`
