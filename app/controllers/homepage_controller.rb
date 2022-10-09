class HomepageController < ApplicationController
  def index
    @collection = Reqres::Users.all
  end
end