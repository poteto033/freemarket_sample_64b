class ItemsController < ApplicationController
  def index
    
  end

  def new
    @item = Item.new
    @category=Category.all.where(ancestry: nil)
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

 def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
 end


  def create
    Item.create(item_params)
  end
  def show
  end

  def edit
  end

  private
  def item_params
    params.require(:item).permit(:name,:text,:item_status,:price,:delivery_charge,:delivery_area,:delivery_days,:category_id,:brand_id,:solder_id,:buyer_id)
    
  end
end



