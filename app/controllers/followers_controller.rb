class FollowersController < ApplicationController
  def index
    @followers = Follower.where(user_id: current_user.id)
  end

  def show
    @follower = Follower.find(params[:id])
  end

  def new
    @follower = Follower.new
  end

  def create
    @follower = Follower.new
    @follower.user_id = current_user.id
    new_friend = User.find_by(email: params[:friend_id])
    if new_friend == nil
      new_friend = User.find_by(username: params[:friend_id])
    end
    if new_friend == nil
      redirect_to '/followers/new', :notice => "User not found"
    else
      @follower.friend_id = new_friend.id

      if @follower.save
        redirect_to "/followers", :notice => "Follower created successfully."
      else
        render 'new'
      end
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
