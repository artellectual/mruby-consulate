# Consulate Module
module Consulate
  class << self
    def catalog
      @catalog ||= Consul::Catalog.new
    end

    def get_ip_for(service_name, domain)
      ips = catalog.service(service_name, tag: domain).map do |n|
        n['TaggedAddresses']['wan']
      end

      ips.first
    end
  end
end
