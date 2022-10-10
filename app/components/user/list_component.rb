class User::ListComponent < ViewComponent::Base
  def initialize(collection:)
    @collection = collection
  end
end
