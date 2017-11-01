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

    protected

    def render(response)
      if response['content-type'] == 'application/json'
        JSON.parse(response['body'])
      else
        response['body']
      end
    end

    def parameterize(hash)
      '?' + hash.map do |data|
        "#{data.first}=#{data.last}"
      end.join('&')
    end
  end
end
