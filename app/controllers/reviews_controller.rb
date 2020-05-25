class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    review = @product.reviews.new(review_params)
    if review.save
      redirect_to product_path(@product), notice: "保存が成功しました"
    else
      render action: :new, notice: "保存が失敗しました"
    end
  end

  private
  def review_params
    params.require(:review).permit(:total, :package, :price, :color, :amount, :naming, :concept, :balance, :comment).merge(user_id: @current_user.id)
  end
end
