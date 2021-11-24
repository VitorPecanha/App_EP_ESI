class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to @video
    else
      render 'new'
    end
  end

  private
  def video_params
    params.require(:video).permit(:nome_da_planta, :nome_do_video, :provedor, :link)
  end

  def show
    @video = Video.find(params[:id])
  end

end
