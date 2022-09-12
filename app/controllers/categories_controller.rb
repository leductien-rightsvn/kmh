class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit; end

  def show; end

  # POST /categories or /categories.json
  def create
    @category = Category.new category_params
    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_url, notice: t('notification.create_success') }
        format.json { render :index, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to edit_category_url(@category), notice: t('notification.update_success') }
        format.json { render :edit, status: :ok, location: @category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy!

    respond_to do |format|
      format.html { redirect_to categories_url, notice: t('notification.delete_success') }
      format.json { head :no_content }
    end
  end

  private

    def category_params
      params.require(:category).permit(:name, :image)
    end

    def set_category
      @category = Category.find(params[:id])
    end
end
