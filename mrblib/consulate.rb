# Consulate Module
module Consulate
  class << self
    attr_writer :endpoint

    def http
      @http ||= HttpRequest.new
    end

    def endpoint
      @endpoint ||= 'http://127.0.0.1:8500/v1'
    end
  end
end
