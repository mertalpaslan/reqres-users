module Reqres
  User = Struct.new(:id, :email, :first_name, :last_name, :avatar)

  class UserCollection
    include Paginatable
    attr_accessor :page, :per_page, :total, :total_pages, :users

    def initialize(response)
      self.page = response.dig("page")
      self.per_page = response.dig("per_page")
      self.total = response.dig("total")
      self.total_pages = response.dig("total_pages")

      self.users = response.dig("data").map { |user| Reqres::User.new(*user.values_at(*User.members.map(&:to_s))) }
    end

    def search(keyword = nil)
      self.users = self.users.select { |user| user.email.include? keyword } if keyword.present?

      self
    end
  end
end
