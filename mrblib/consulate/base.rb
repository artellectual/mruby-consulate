module Consulate
  # Base Class for Consulate
  class Base
    attr_reader :base_url, :http

    def initialize
      @base_url = format(
        '%s/%s',
        Consulate.endpoint,
        self.class::RESOURCE
      )

      @http = Consulate.http
    end
  end
end
