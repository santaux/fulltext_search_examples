class ProductsController < ApplicationController
  def index
    if params[:query]
      @products = Product.search { fulltext params[:query] }.results
    else
      @products = Product.all
    end
  end
end
