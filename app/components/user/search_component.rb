class User::SearchComponent < ViewComponent::Base
  def initialize(page:)
    @page = page
  end
end
