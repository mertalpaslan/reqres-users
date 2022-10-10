class User::ListItemComponent < ViewComponent::Base
  with_collection_parameter :user

  def initialize(user:)
    @user = user
  end
end
