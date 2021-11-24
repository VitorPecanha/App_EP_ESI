class VideosController < ApplicationController
  def new
  end

  def create
    @video = Video.new(video_params)
    @video.save
  end

  private
  def video_params
    params.require(:video).permit(:nome_da_planta, :nome_do_video, :provedor, :link)
  end

end
