class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
     
  def create
  	 product = Product.new(product_params)
    if product.save
	  redirect_to products_path, notice: "保存が成功しました"
    else
      render action: :new, notice: "保存が失敗しました"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
	if product.update(product_params)
      redirect_to products_path, notice: "更新しました"
	else
      redirect_to edit_product_path(product), notice: "更新が失敗しました"
	end	   
  end
		
  def destroy
	Product.find(params[:id]).destroy		
	redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:status, :variety, :name, :price, :limited_number, :first_time, :last_time, :photo, :comment).merge(user_id: @current_user.id)
    end
end
