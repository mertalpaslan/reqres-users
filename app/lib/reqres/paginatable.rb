module Reqres
  module Paginatable
    def next_page
      page + 1 unless last_page?
    end

    def next_page?
      page < total_pages
    end

    def previous_page
      page - 1 unless first_page?
    end

    def previous_page?
      page > 1
    end

    def last_page?
      page == total_pages
    end

    def first_page?
      page == 1
    end
  end
end
