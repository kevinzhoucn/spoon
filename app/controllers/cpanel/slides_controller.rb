class Cpanel::SlidesController < Cpanel::ApplicationController
  before_action :set_cpanel_slide, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cpanel_slides = Slide.all
    respond_with(@cpanel_slides)
  end

  def show
    respond_with(@cpanel_slide)
  end

  def new
    @cpanel_slide = Slide.new
    respond_with(@cpanel_slide)
  end

  def edit
  end

  def create
    @cpanel_slide = Slide.new(cpanel_slide_params)
    @cpanel_slide.save
    respond_with([:cpanel, @cpanel_slide])
  end

  def update
    @cpanel_slide.update(cpanel_slide_params)
    respond_with(@cpanel_slide)
  end

  def destroy
    @cpanel_slide.destroy
    # respond_with(@cpanel_slide)
    redirect_to cpanel_slides_path
  end

  private
    def set_cpanel_slide
      @cpanel_slide = Slide.find(params[:id])
    end

    def cpanel_slide_params
      params.require(:slide).permit(:title, :avatar)
    end
end
