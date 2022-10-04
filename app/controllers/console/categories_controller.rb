class Console::CategoriesController < Console::ApplicationController
  before_action :set_category, except: %i[index new create]

  def index
    @categories = Category.all.page params[:page]
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
        flash[:success] = t('controller.notification.success')
        format.html { redirect_to console_categories_url }
        format.json { render :index, status: :created, location: @category }
      else
        flash[:danger] = t('controller.notification.danger')
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        flash[:success] = t('controller.notification.success')
        format.html { redirect_to edit_console_category_url(@category) }
        format.json { render :edit, status: :ok, location: @category }
      else
        flash[:danger] = t('controller.notification.danger')
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy!
    respond_to do |format|
      flash[:success] = t('controller.notification.success')
      format.html { redirect_to console_categories_url }
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
