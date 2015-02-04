#!/bin/sh
# Configure Puppet nightly packages

[ x$PUPPET_VERSION = xnightlies ] || exit 0

wget -q -r -nd -np -A .gem http://nightlies.puppetlabs.com/puppet-latest/repos/ http://nightlies.puppetlabs.com/facter-latest/repos/
rm *mingw* *darwin*
gem install *.gem
