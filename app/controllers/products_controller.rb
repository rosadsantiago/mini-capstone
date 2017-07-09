class ProductsController < ApplicationController
def index
  @products = Product.all
  render "product.html.erb"
end

def index
  @products = Product.all 
  render "all_products.html.erb"
end

def show
  products_id = params[:id]
  @products = params.find_by(id: recipe_id)
  render "show.html.erb"
end

end
