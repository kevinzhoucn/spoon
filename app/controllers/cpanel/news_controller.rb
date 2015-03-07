class Cpanel::NewsController < Cpanel::ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @news = News.all
    respond_with(@news)
  end

  def show
    respond_with(@news)
  end

  def new
    @news = News.new
    respond_with(@news)
  end

  def edit
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to cpanel_news_index_path
    end
    # respond_with(@news)
  end

  def update
    @news.update(news_params)
    respond_with(@news)
  end

  def destroy
    @news.destroy
    redirect_to cpanel_news_index_path
    #respond_with(@news)
  end

  private
    def set_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:title, :content)
    end
end
