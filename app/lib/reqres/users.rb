module Reqres
  module Users
    def self.all(per_page: 12, page: 1)
      path = "users?per_page=#{per_page}&page=#{page}"

      Reqres::UserCollection.new call_api(path)
    end

    def self.call_api(path)
      url = REQRES_URL + path

      HTTParty.get(url)
    end
  end
end