# Consulate Module

module Consulate
  class << self
    def endpoint
      @endpoint ||= "http://127.0.0.1:8500/v1"
    end

    def endpoint=(url)
      @endpoint = url
    end
  end
end
