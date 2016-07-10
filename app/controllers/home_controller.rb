class HomeController < ApplicationController
  def index
  end
  def contact_us
  end
  def order
    if params[:getOrder]
      @food_items = FoodItem.getOrder( params[:getOrder])
    end
  end
  def review
    @ordernum = Order.find_by_id( params[:Ordernum])
    if params[:getOrder]
      @food_items = FoodItem.getOrder( params[:getOrder])
    elsif params[:Ordernum]
      @ordernum = Order.find_by_id(Ordernum)
    end
  end
  def menu
  	if params[:section] 
  		@food_items = FoodItem.order('created_at DESC').where section: params[:section]
  	elsif params[:search]
      @food_items = FoodItem.search(params[:search]).order("created_at DESC")
    elsif params[:searchType]
      @food_items = FoodItem.order( params[:searchType]+ " DESC")
    elsif params[:getOrder]
      @food_items = FoodItem.getOrder( params[:getOrder])
    elsif params[:getOrderCal]
      @food_items = FoodItem.getOrder( params[:getOrderCal])
    else
  		@food_items = FoodItem.all.order('created_at DESC')
  	end
  end
end
