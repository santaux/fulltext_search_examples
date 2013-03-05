class ProductsController < ApplicationController
  def index
    if params[:query]
      @products = Product.search(params)
    else
      @products = Product.all
    end
  end
end
