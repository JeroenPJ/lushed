class LyricsController < ApplicationController
  before_action :set_body
  before_action :set_lyric, only: [:edit, :update, :destroy]

  before_action :authenticate_admin!, except: [:login]
  http_basic_authenticate_with name: "laundrymen", password: "gridwave", only: [:login]

  def login
    session[:admin_token] = "8JZ8tzq3FWNjHio4FczZLfte"
    redirect_to lyrics_path
  end

  def index
    @lyrics = Lyric.all.order(title: :asc)
  end

  def new
    @lyric = Lyric.new
  end

  def create
    @lyric = Lyric.new(lyric_params)

    if @lyric.save
      redirect_to lyrics_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lyric.update(lyric_params)
      redirect_to lyrics_path
    else
      render :edit
    end
  end

  def destroy
    @lyric.destroy
    redirect_to lyrics_path
  end

  private

  def lyric_params
    params.require(:lyric).permit(:title, :content)
  end

  def set_lyric
    @lyric = Lyric.find(params[:id])
  end

  def set_body
    @body_classes = %w[black full-height lyrical]
  end

  def authenticate_admin!
    redirect_to lyrics_login_path unless logged_in?
  end

  def logged_in?
    session[:admin_token] == "8JZ8tzq3FWNjHio4FczZLfte"
  end
end
