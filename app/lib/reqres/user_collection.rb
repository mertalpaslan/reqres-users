module Reqres
  class UserCollection

    include Paginatable

    User = Struct.new(:id, :email, :first_name, :last_name, :avatar)

    attr_accessor :page, :per_page, :total, :total_pages, :users

    def initialize(response)
      self.page = response.dig("page")
      self.per_page = response.dig("per_page")
      self.total = response.dig("total")
      self.total_pages = response.dig("total_pages")

      self.users = response.dig("data").map { |user| User.new(*user.values_at(*User.members.map(&:to_s))) }
    end
  end
end