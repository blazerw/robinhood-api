require 'simplecov'
require 'coveralls'

Coveralls.wear! unless ENV['CC_TEST_REPORTER_ID'].nil?
SimpleCov.start

unless ENV['CC_TEST_REPORTER_ID'].nil?
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

# require File.expand_path("../../test/dummy/config/environment.rb", __FILE__)
# ActiveRecord::Migrator.migrations_paths = [
#   File.expand_path("../../test/dummy/db/migrate", __FILE__)
# ]
# require "rails/test_help"

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
# Minitest.backtrace_filter = Minitest::BacktraceFilter.new

# Rails::TestUnitReporter.executable = 'bin/test'

# Load fixtures from the engine
# if ActiveSupport::TestCase.respond_to?(:fixture_path=)
#   ActiveSupport::TestCase.fixture_path = File.expand_path(
#     "../fixtures", __FILE__
#   )
#   ActionDispatch::IntegrationTest.fixture_path = \
#     ActiveSupport::TestCase.fixture_path
#   ActiveSupport::TestCase.file_fixture_path = \
#     ActiveSupport::TestCase.fixture_path + "/files"
#   ActiveSupport::TestCase.fixtures :all
# end

# $LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'robinhood/api'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! # Minitest::Reporters::JUnitReporter.new
