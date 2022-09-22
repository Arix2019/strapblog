module ArticlesHelper
    def post_format_date(datetime) 
        datetime.strftime('%B %e, %Y')
    end
end
