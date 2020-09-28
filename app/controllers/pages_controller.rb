class PagesController < ApplicationController
  def index
    # @users = User.all
    # users = User.all
    # users.each do |user|
    #   @contents = user.contents.paginate(page: params[:page])
    # end
    @contents = Content.all
  end

  def show
  end
end
