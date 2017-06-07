module SimilarWeb
  module SimilarSites
    def similar_sites(domain, params)
      request_new("#{domain}/similar-sites/similarsites", params)
    end
  end
end
