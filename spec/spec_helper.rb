# coding: utf-8
require 'bundler/setup'
require 'pry-debugger'
require 'rspec'
require 'resque'
require 'simplecov'
require 'mock_redis'
require 'timecop'

Resque.redis = MockRedis.new

SimpleCov.start

require 'resque/integration'

RSpec.configure do |config|
  config.before do
    Resque.redis.flushdb
  end
end
