class ItemFollowersController < ApplicationController
  def index
    @item_followers = ItemFollower.all
  end

  def show
    @item_follower = ItemFollower.find(params[:id])
  end

  def new
    @item_follower = ItemFollower.new
  end

  def create
    @item_follower = ItemFollower.new
    @item_follower.user_id = params[:user_id]
    @item_follower.item_id = params[:item_id]

    if @item_follower.save
      redirect_to "/item_followers", :notice => "Item follower created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item_follower = ItemFollower.find(params[:id])
  end

  def update
    @item_follower = ItemFollower.find(params[:id])

    @item_follower.user_id = params[:user_id]
    @item_follower.item_id = params[:item_id]

    if @item_follower.save
      redirect_to "/item_followers", :notice => "Item follower updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item_follower = ItemFollower.find(params[:id])

    @item_follower.destroy

    redirect_to "/item_followers", :notice => "Item follower deleted."
  end
end
