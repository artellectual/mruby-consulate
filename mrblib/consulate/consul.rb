module Consulate
  # Consul Module
  module Consul
    class << self
      attr_writer :endpoint

      def endpoint
        @endpoint ||= 'http://127.0.0.1:8500/v1'
      end
    end
  end
end
