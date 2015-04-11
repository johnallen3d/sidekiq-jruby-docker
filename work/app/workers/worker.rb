require 'sidekiq'
require 'securerandom'

class Worker
  include Sidekiq::Worker

  REDIS=Redis.new

  def perform(key)
    REDIS.sadd(key, SecureRandom.uuid)
  end
end
