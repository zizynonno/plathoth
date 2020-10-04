class ContentsController < ApplicationController
  def show
    @content = Content.find(params[:id])
    @extension_type = File.extname("#{@content.media}")
  end
end
