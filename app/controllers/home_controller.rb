class HomeController < ApplicationController
  def index
  end
  def contact_us
  end
  def menu
  	if params[:section] 
  		@food_items = FoodItem.order('created_at DESC').where section: params[:section]
  	elsif params[:search]
      @food_items = FoodItem.search(params[:search]).order("created_at DESC")
    elsif params[:searchType]
      @food_items = FoodItem.order( params[:searchType]+ " DESC")
    else
  		@food_items = FoodItem.all.order('created_at DESC')
  	end
  end
end
