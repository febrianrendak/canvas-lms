source :rubygems

ONE_NINE = RUBY_VERSION >= "1.9."

gem 'rails',          '2.3.14'
gem 'authlogic',      '2.1.3'
#gem 'aws-s3',         '0.6.2',  :require => 'aws/s3'
# use custom gem until pull request at https://github.com/marcel/aws-s3/pull/41
# is merged into mainline. gem built from https://github.com/lukfugl/aws-s3
gem "aws-s3-instructure", "~> 0.6.2.1319643167",  :require => 'aws/s3'
gem 'bcrypt-ruby',    '3.0.1'
gem 'builder',        '2.1.2'
gem 'daemons',        '1.1.0'
gem 'diff-lcs',       '1.1.2',  :require => 'diff/lcs'
gem 'encrypted_cookie_store-instructure', '1.0.1', :require => 'encrypted_cookie_store'
gem 'erubis',         '2.7.0'
gem 'hairtrigger',    '0.1.13'
gem 'haml',           '3.1.2'
if !ONE_NINE
  gem 'fastercsv', '1.5.3'
end
gem 'hashery',        '1.3.0',  :require => 'hashery/dictionary'
gem 'highline',       '1.6.1'
gem 'i18n',           '0.6.0'
gem 'icalendar',      '1.1.5'
gem 'jammit',         '0.6.0'
gem 'json',           '1.5.2'
# native xml parsing, diigo
gem 'libxml-ruby',    '2.3.2',  :require => 'xml/libxml'
gem 'macaddr',        '1.0.0'  # macaddr 1.2.0 tries to require 'systemu' which isn't a dependency
gem 'mailman',        '0.5.0'
gem 'mime-types',     '1.16',   :require => 'mime/types'
# attachment_fu (even the current technoweenie one on github) does not work
# with mini_magick 3.1
gem 'mini_magick',    '1.3.2'
gem 'netaddr',        '1.5.0'
gem 'nokogiri',       '1.5.0'
gem 'oauth',          '0.4.5'
gem 'rack',           '1.1.3'
gem 'rake',           '< 0.10'
gem 'rdoc',           '3.12'
gem 'ratom-instructure', '0.6.9', :require => "atom" # custom gem until necessary changes are merged into mainstream
if !ONE_NINE
  gem 'rbx-require-relative', '0.0.5'
end
gem 'rdiscount',      '1.6.8'
gem 'require_relative', '1.0.1'
gem 'ritex',          '1.0.1'
gem 'rscribd',        '1.2.0'
gem 'ruby-net-ldap',  '0.0.4',  :require => 'net/ldap'
gem 'ruby-saml-mod',  '0.1.14'
gem 'rubycas-client', '2.2.1'
gem 'rubyzip',        '0.9.4',  :require => 'zip/zip'
gem 'sanitize',       '2.0.3'
gem 'uuid',           '2.3.2'
gem 'will_paginate',  '2.3.15'
gem 'xml-simple',     '1.0.12', :require => 'xmlsimple'
# this is only needed by jammit, but we're pinning at 0.9.4 because 0.9.5 breaks
gem 'yui-compressor', '0.9.4'
gem 'foreigner',      '0.9.2'

group :assets do
  gem 'compass-rails', '1.0.1'
end

group :mysql do
  gem 'mysql',        '2.8.1'
end

group :postgres do
  gem 'pg',           '0.10.1'
end

group :sqlite do
  gem 'sqlite3-ruby', '1.3.2'
end

group :test do
  gem 'coffee-script'
  gem 'coffee-script-source',  '1.3.1' #pinned so everyone's compiled output matches
  gem 'bluecloth',    '2.0.10' # for generating api docs
  gem 'parallel',     '0.5.16'
  gem 'parallelized_specs', '0.1.9'
  gem 'mocha',        '0.10.0'
  gem 'rcov',         '0.9.9'
  gem 'rspec',        '1.3.2'
  gem 'rspec-rails',  '1.3.4'
  gem 'selenium-webdriver', '2.22.2'
  gem 'webrat',       '0.7.3'
  gem 'yard',         '0.8.0'
  if ONE_NINE
    gem 'test-unit',  '1.2.3'
  end
end

group :development do
  gem 'coffee-script'
  gem 'coffee-script-source',  '1.3.1' #pinned so everyone's compiled output matches
  gem 'parallel',     '0.5.16'
  if ONE_NINE
    gem 'debugger',     '1.1.3'
  else
    gem 'ruby-debug',   '0.10.4'
  end
  gem 'ruby_parser', '2.0.6'
  gem 'sexp_processor', '3.0.5'
  gem 'ya2yaml', '0.30'
  gem 'guard', '1.0.3'
end

group :redis do
  gem 'redis-store', '1.0.0.rc1'
end

group :embedly do
  gem 'embedly', '1.5.5'
end

# Non-standard Canvas extension to Bundler behavior -- load the Gemfiles from
# plugins.
Dir[File.join(File.dirname(__FILE__),'vendor/plugins/*/Gemfile')].each do |g|
  eval(File.read(g))
end
