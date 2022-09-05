class CategoriesController < ApplicationController
  before_action :set_category, only: :update

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category.update! category_params
    redirect_to edit_category_path
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy!
    redirect_to categories_path
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = t('save.success')
      redirect_to edit_category_path(@category)
    else
      flash[:danger] = t('save.danger')
      render new
    end
  end

  private

    def category_params
      params.require(:category).permit :name, :image
    end

    def set_category
      @category = Category.find params[:id]
    end
end
