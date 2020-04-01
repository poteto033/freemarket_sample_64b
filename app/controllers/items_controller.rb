class ItemsController < ApplicationController

  def index
   @items = Item.includes(:images).order('created_at DESC')
  end

  def new
   @items = Item.new
   @category_parent = ["---"]
   @category_parent=Category.all.where(ancestry: nil).each do |parent|
    @category_parent<<parent.name
   end
  end

  def category_children
    @category_children = Category.find(params[:parent_name]).children
  end

  def category_grandchildren
    @category_grandchildren = Category.find(params[:child_name]).children
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

