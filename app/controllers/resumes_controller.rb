class ResumesController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]
  before_action :set_position, only: [:create]

  respond_to :html

  def index
    @resumes = Resume.all
    respond_with(@resumes)
  end

  def show
    respond_with(@resume)
  end

  def new
    @resume = Resume.new
    respond_with(@resume)
  end

  def edit
  end

  def create
    @resume = Resume.new(resume_params)
    @resume[:position_id] = @position.id

    if @resume.save
      flash[:notice] = 'Resume was successfully created.'
      Notifier.resume_received(@resume).deliver 
    end
    
    respond_with(@resume)
  end

  def update
    @resume.update(resume_params)
    respond_with(@resume)
  end

  def destroy
    @resume.destroy
    respond_with(@resume)
  end

  private
    def set_resume
      @resume = Resume.find(params[:id])      
      # @position = Position.find(params[:position_id])
    end

    def set_position
      @position = Position.find(params[:position_id])
    end

    def resume_params
      params.require(:resume).permit(:name, :phone, :email, :avatar, :content)
    end
end
