class FollowersController < ApplicationController
  def index
    @followers = Follower.all
  end

  def show
    @follower = Follower.find(params[:id])
  end

  def new
    @follower = Follower.new
  end

  def create
    @follower = Follower.new
    @follower.user_id = params[:user_id]
    @follower.friend_id = params[:friend_id]

    if @follower.save
      redirect_to "/followers", :notice => "Follower created successfully."
    else
      render 'new'
    end
  end

  def edit
    @follower = Follower.find(params[:id])
  end

  def update
    @follower = Follower.find(params[:id])

    @follower.user_id = params[:user_id]
    @follower.friend_id = params[:friend_id]

    if @follower.save
      redirect_to "/followers", :notice => "Follower updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @follower = Follower.find(params[:id])

    @follower.destroy

    redirect_to "/followers", :notice => "Follower deleted."
  end
end
