# Consulate Module
module Consulate
  class << self
    def http
      @http ||= HttpRequest.new
    end
  end
end
