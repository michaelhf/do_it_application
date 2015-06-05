class RankingsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  def index
    @rankings = Ranking.order("completed DESC")
  end

  def show
    @ranking = Ranking.find(params[:id])
  end

  def new
    @ranking = Ranking.new
  end

  def create
    @ranking = Ranking.new
    @ranking.user_id = params[:user_id]
    @ranking.completed = params[:completed]
    @ranking.created = params[:created]

    if @ranking.save
      redirect_to "/rankings", :notice => "Ranking created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ranking = Ranking.find(params[:id])
  end

  def update
    @ranking = Ranking.find(params[:id])

    @ranking.user_id = params[:user_id]
    @ranking.completed = params[:completed]
    @ranking.created = params[:created]

    if @ranking.save
      redirect_to "/rankings", :notice => "Ranking updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ranking = Ranking.find(params[:id])

    @ranking.destroy

    redirect_to "/rankings", :notice => "Ranking deleted."
  end
end
