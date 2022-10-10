class User::PaginationComponent < ViewComponent::Base
  def initialize(collection:)
    @collection = collection
  end

  def next_page_class
    @collection.next_page? ? '' : ' disabled'
  end

  def previous_page_class
    @collection.previous_page? ? '' : ' disabled'
  end
end
