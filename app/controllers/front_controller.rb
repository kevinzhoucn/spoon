class FrontController < ApplicationController
  def index
  end

  def search
    @key_words = params[:key]
    @products = Product.search(params[:key])
  end
end
