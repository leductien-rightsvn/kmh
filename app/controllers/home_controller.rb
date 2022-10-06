class HomeController < ApplicationController
  def index
    @categories_top3 = Category.top_3_category
    @products = Product.all.page(params[:page]).per(8)
  end
end
