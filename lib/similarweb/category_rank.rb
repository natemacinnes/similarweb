module SimilarWeb
  module CategoryRank
    def category_rank(domain)
      request_new("#{domain}/category-rank/category-rank")
    end
  end
end
