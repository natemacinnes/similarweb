module SimilarWeb
  module TrafficByCountry
    # API reference: https://developer.similarweb.com/geo_distribution
    # This is for new API
    def traffic_by_country(domain, params = {})
      request_new("#{domain}/geo/traffic-by-country", parmas)
    end
  end
end
