class ItemsController < ApplicationController

  def index
   @items = Item.includes(:images).order('created_at DESC')
  end

  def new
   @items = Item.new
   @category = Category.all.where(ancestry: nil)
  end

  def create
  end

  def show
  end

  def edit
  end

  def purchase
    
  end
end

