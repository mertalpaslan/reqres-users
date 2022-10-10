module Reqres
  module Users
    def self.all(per_page: 6, page: 1)
      path = "users?per_page=#{per_page}&page=#{page}"

      Reqres::UserCollection.new call_api(path)
    end

    def self.find(id)
      path = "users/#{id}"
      response = call_api(path)
      user = response.dig("data")

      Reqres::User.new(*user.values_at(*User.members.map(&:to_s)))
    end

    def self.call_api(path)
      url = REQRES_URL + path

      Rails.cache.fetch(["users", path], expires_in: 1.minutes) do
        HTTParty.get(url)
      end
    end
  end
end
