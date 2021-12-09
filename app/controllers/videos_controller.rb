class VideosController < ApplicationController


  def index
    @video = Video.all
  end

  def show

  end

  def new
    @video = Video.new
  end

  """def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to @video
    else
      render 'new'
    end
  end"""

  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: "Video salvo."}
        format.json { render :show, status: :created, location: @video}
      else
        format.html { render :new, status: :unprocessable_entity}
        format.json { render json: @video.errors, status: :unprocessable_entity}
      end
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
