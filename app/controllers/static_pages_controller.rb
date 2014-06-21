class StaticPagesController < ApplicationController
  def home
    @user = current_user
    @purchase = Purchase.new
      render 'static_pages/home', layout: 'application'
  end

 
end
