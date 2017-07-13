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
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.html.erb"
  end

  def new 
    render "new.html.erb"
  end

  def create
     product = Product.new(
      price:params[:form_price],
      description:params[:form_description]
      )
     product.save
     render "create.html.erb"
     flash[:sucess] = "Product succesfully saved!"
     redirect_to "/products/#{product.id}"

  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

def update
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  @product.price = params[:form_price]
  @product.description = params[:form_description]
  @product.save
  flash[:sucess] = "Productss succesfully updated!"
  redirect_to "/products/#{@product.id}"
end 

def destroy
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  product.destroy
  render "destroy.html.erb"
  flash[:sucess] = "Contacts succesfully destroyed!"
  redirect_to "/products/#{@product.id}"
end

end
