module Consulate
  # Catalog HTTP Api for Consul.io
  class Catalog < Consulate::Base
    RESOURCE = 'catalog'.freeze

    def services
      # Lists out services
      url = format('%s/%s', base_url, 'services'.freeze)

      JSON.parse(http.get(url)['body'])
    end
  end
end
