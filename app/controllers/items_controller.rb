class ItemsController < ApplicationController

  def index
    
  end

  def show
    @item=Item.find(1).includes(:user)
  end
end
