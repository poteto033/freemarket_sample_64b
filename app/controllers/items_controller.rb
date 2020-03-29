class ItemsController < ApplicationController
  def index
   @items = Item.includes(:images).order('created_at DESC')
  end

  def new
<<<<<<< HEAD
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
=======
>>>>>>> master
  end

  def create
  end

  def show
  end

  def edit
  end

<<<<<<< HEAD
  private
  def item_params
    params.require(:item).permit(:name,:text,:item_status,:price,:delivery_charge,:delivery_area,:delivery_days,:category_id,:brand_id,:solder_id,:buyer_id)
=======
  def purchase
>>>>>>> master
    
  end
end



