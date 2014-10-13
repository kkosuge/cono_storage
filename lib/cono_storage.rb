require "faraday"
require "faraday_middleware"
require "mimemagic"
require "json"
require "time"
require 'active_support/core_ext/hash'
require "cono_storage/version"
require "cono_storage/client"
require "cono_storage/request_methods"

module ConoStorage

  class << self
    # Alias for ConoStorage::Client.new
    def new(params)
      Client.new(params)
    end
  end
end
