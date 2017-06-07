module SimilarWeb
  module SocialReferrals
    def social_referrals(domain, params = {})
      request_new("#{domain}/traffic-sources/social", params)
    end
  end
end
