module Consulate
  module Consul
    # Catalog HTTP Api for Consul
    class Catalog < Consul::Base
      RESOURCE = 'catalog'.freeze

      def services
        # Lists out services
        url = format('%s/%s', base_url, 'services'.freeze)

        render http.get(url)
      end

      def service(name, options = {})
        url = format(
          '%s/%s/%s', base_url, 'service'.freeze, name
        )

        render http.get(url + parameterize(options))
      end
    end
  end
end
