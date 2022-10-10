class User::DetailsComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end
end
