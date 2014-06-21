class PurchaseController < ApplicationController

  def new
    @user = current_user
    @purchase = Purchase.new


    render 'purchases/new', layout: 'application'
  end
  def create
    puts "\n\n ytf params #{params[:purchase]}"
    # user = User.find_by_name(params[:user_id])
    date = params[:purchase][:date]
    description = params[:purchase][:description]
    category = params[:purchase][:category]
    price = params[:purchase][:price]
    quantity = params[:purchase][:quantity]
    taxable = 
      if params[:purchase][:taxable] == "yes"
        true
      else
        false
      end

    purchase = Purchase.create!(description: description, date: date, user_id: current_user, category: category, price: price, quantity: quantity, taxable: taxable)

    if purchase.save
      redirect_to :root
    end
  end

  def show
  end

  private
  def allowed_params
    params.require(:purchase).permit(:description, :user_id, :date, :category, :price, :quantity, :taxable)
  end
end
