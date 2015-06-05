class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.user_id = params[:user_id]
    @item.finished = params[:finished]
    @item.title = params[:title]
    @item.private = params[:private]

    if @item.save
      r = Ranking.find_or_create_by(user_id: @item.user_id)
      if r.created == nil
        then
        r.created = 1
      else
        r.created += 1
      end
      if r.completed == nil
        r.completed = 0
      end
      r.save

      redirect_to "/items", :notice => "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.user_id = params[:user_id]
    @item.finished = params[:finished]
    @item.title = params[:title]
    @item.private = params[:private]

    if @item.save
      redirect_to "/items", :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if r.completed == nil
      then
      r.completed = 1
    else
      r.completed += 1
    end
    r.save
    @item.destroy

    redirect_to "/items", :notice => "Item deleted."
  end
end
