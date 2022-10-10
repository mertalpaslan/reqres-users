class HomepageController < ApplicationController
  def index
    @collection = Reqres::Users.all
  end

  def search
    @collection = Reqres::Users.all(page: params[:page].to_i).search(params[:search])

    respond_to do |format|
      format.turbo_stream
    end
  end

  def page
    @collection = Reqres::Users.all(page: params[:page].to_i)

    respond_to do |format|
      format.turbo_stream
    end
  end

  def details
    @user = Reqres::Users.find(params[:user_id])

    respond_to do |format|
      format.turbo_stream
    end
  end
end
