module SimilarWeb
  module Referrals
    def referrals(domain, params = {})
      request_new("#{domain}/traffic-sources/referrals", params)
    end
  end
end
