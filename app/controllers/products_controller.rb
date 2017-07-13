class ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.html.erb"
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
     flash[:sucess] = "Product succesfully saved!"
     redirect_to "/products/#{product.id}"
   end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.html.erb"
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "edit.html.erb"
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
  flash[:sucess] = "Contacts succesfully destroyed!"
  redirect_to "/products/#{@product.id}"
end
end
