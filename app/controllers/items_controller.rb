class ItemsController < ApplicationController

  def index
   @items = Item.includes(:images).order('created_at DESC')
  end

  def new
   @item = Item.new
   @item.images.build
   @category_parent = ["---"]
   @category_parent=Category.all.where(ancestry: nil).each do |parent|
    @category_parent<<parent.name
   end
   @prefectures = Prefecture.all



  end

  def category_children
    @category_children = Category.find(params[:parent_name]).children
  end

  def category_grandchildren
    @category_grandchildren = Category.find(params[:child_name]).children
  end

  def create
    @item=Item.new(params(item_params))
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def purchase
    
  end

  private
  def item_params
    params.require(:item).permit(:name,:text,:item_status,:price,:delivery_area,:delivery_chage,:delivery_days,:brand,images_attributes: [:image]).merge(user_id: currnet_user.id)
  end
end

