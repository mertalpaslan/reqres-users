class HomepageController < ApplicationController
  def index
    @collection = Reqres::Users.all
  end

  def users
    
  end
end
