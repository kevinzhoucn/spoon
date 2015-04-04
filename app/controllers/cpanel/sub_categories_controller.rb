class Cpanel::SubCategoriesController < Cpanel::ApplicationController
  before_action :set_cpanel_sub_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sub_categories = SubCategory.all
    respond_with(@sub_categories)
  end

  def show
    respond_with(@cpanel_sub_category)
  end

  def new
    @sub_category = SubCategory.new
    respond_with(@sub_category)
  end

  def edit
  end

  def create
    @cpanel_sub_category = SubCategory.new(cpanel_sub_category_params)
    @cpanel_sub_category.save
    # respond_with(@sub_category)
    redirect_to cpanel_sub_categories_path
  end

  def update
    @cpanel_sub_category.update(cpanel_sub_category_params)
    # respond_with(@cpanel_sub_category)
    redirect_to cpanel_sub_categories_path
  end

  def destroy
    @cpanel_sub_category.destroy
    respond_with(@cpanel_sub_category)
  end

  private
    def set_cpanel_sub_category
      @cpanel_sub_category = SubCategory.find(params[:id])
    end

    def cpanel_sub_category_params
      params.require(:sub_category).permit(:title)
    end
end
