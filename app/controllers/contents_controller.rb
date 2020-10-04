class ContentsController < ApplicationController
  def show
    @content = Content.find(params[:id])
    @extension_type = File.extname("#{@content.media}")
  end

  def new
    if user_signed_in?
      @content = current_user.contents.new 
    else
      redirect_to root_path
    end
  end

  def create
    @content = current_user.contents.build(content_params)
    if @content.save
      flash[:success] = "Content created!"
      redirect_to root_url
    else
      render new_content
    end
  end

  private

    def content_params
      params.require(:content).permit(:title,:summary,:media)
    end
end
