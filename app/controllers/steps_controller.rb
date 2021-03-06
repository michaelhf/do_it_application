class StepsController < ApplicationController
  def index
    @steps = Step.where(user_id: current_user.id)
  end

  def show
    @step = Step.find(params[:id])
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new

    if @item.present?
      then
      @step.item_id = @item.id
    else
      @step.item_id = params[:item_id]
    end
    @step.step_number = params[:step_number]
    @step.completed = params.fetch(:completed,false)
    @step.user_id = current_user.id
    @step.detail = params[:detail]

    if @step.save
      redirect_to "/steps", :notice => "Step created successfully."
    else
      render 'new'
    end
  end

    def create_stay

    @step = Step.new
    @step.item_id = params[:item_id]

    @step.step_number = params[:step_number]
    @step.completed = params.fetch(:completed,false)
    @step.user_id = current_user.id
    @step.detail = params[:detail]

    if @step.save
      currentpage = "/items/" + @step.item_id.to_s
      redirect_to currentpage,  :notice => "Step created successfully."

    else
            currentpage = "/items/" + @step.item_id.to_s
     redirect_to currentpage, :notice => "Step was not created."

    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    @step = Step.find(params[:id])

    @step.step_number = params[:step_number]
    @step.completed = params[:completed]
    @step.detail = params[:detail]

    if @step.save
      redirect_to "/steps", :notice => "Step updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @step = Step.find(params[:id])

    @step.destroy

    redirect_to "/steps", :notice => "Step deleted."
  end
end
