# Parsers, models, and mongo should be required as its running from a rake task
require 'resque/errors'

class OilWorker
  @queue = :oil

  def self.perform(type, *args)
  end
end
