class Cpanel::CategoriesController < Cpanel::ApplicationController
  before_action :set_cpanel_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @categories = Category.all
    respond_with(@categories)
  end

  def i_index
    @kind_of_id = params[:id]
    @categories = Category.where(:kind_of => @kind_of_id)
    respond_with(@categories)
  end

  def show
    respond_with(@category)
  end

  def new
    @category = Category.new
    respond_with(@category)
  end

  def edit
  end

  def create
    @category = Category.new(cpanel_category_params)
    @category.save
    respond_with(@category)
  end

  def update
    @category.update(cpanel_category_params)
    respond_with(@category)
  end

  def destroy
    @category.destroy
    respond_with(@category)
  end

  private
    def set_cpanel_category
      @category = Category.find(params[:id])
    end

    def cpanel_category_params
      params.require(:category).permit(:title)
    end
end
