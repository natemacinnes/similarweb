module SimilarWeb
    module EstimatedVisits
        # API reference: https://developer.similarweb.com/estimated_visits_api
        def estimated_visits(domain)
            prev_date = Date.today.prev_month.prev_month(3).strftime("%m-%Y")
            curr_date = Date.today.prev_month(2).strftime("%m-%Y")
            response = self.http_client.get "#{domain}/v1/visits?start=#{prev_date}&end=#{curr_date}&Format=JSON&UserKey=#{self.api_key}"
            JSON(response.body)
        end

        # Dates are Date objects.
        def estimated_visits_range(domain, start_range, end_range)
            begin
                if end_range > 1 and start_range > end_range
                    start_date = Date.today.prev_month(start_range).strftime("%m-%Y")
                    end_date = Date.today.prev_month(end_range).strftime("%m-%Y")
                    puts "Start Date: #{start_date} !!!! End Date: #{end_date}"
                    puts "#{domain}/v1/visits?start=#{start_date}&end=#{end_date}&Format=JSON&UserKey=#{self.api_key}"
                    response = self.http_client.get "#{domain}/v1/visits?start=#{start_date}&end=#{end_date}&Format=JSON&UserKey=#{self.api_key}"
                    JSON(response.body)
                else
                    raise "\tInvalid date range! \n\tstart_range: months back to start data collection. \n\tend_range: month to end data collection (2 for most recent)."
                end
            rescue => e
                puts ("Invalid date argument passed. \n#{e}")
            end
        end

        def estimated_visits_daily(domain)
            prev_date = Date.today.prev_month.prev_month(3).strftime("%m-%Y")
            curr_date = Date.today.prev_month(2).strftiewme("%m-%Y")
            response = self.http_client.get "#{domain}/v1/visits?gr=daily&start=#{self.prev_date}&end=#{self.curr_date}&Format=JSON&UserKey=#{self.api_key}"
            JSON(response.body)
        end

        def estimated_visits_weekly(domain)
            prev_date = Date.today.prev_month.prev_month(3).strftime("%m-%Y")
            curr_date = Date.today.prev_month(2).strftime("%m-%Y")
            response = self.http_client.get "#{domain}/v1/visits?gr=weekly&start=#{self.prev_date}&end=#{self.curr_date}&Format=JSON&UserKey=#{self.api_key}"
            JSON(response.body)
        end

        def estimated_visits_monthly(domain)
            self.estimated_visits(domain)
        end

    end
end
