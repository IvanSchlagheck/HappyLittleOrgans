class OrgansController < ApplicationController
  before_action :set_organ, only: [:show, :update, :edit]
  skip_before_action :authenticate_user!, only: [:show]

  def index
    @organs = Organ.all
  end
  
  def show
  end

  def new
    @organ = Organ.new
  end

  def create
    @organ = Organ.new(organ_params)
    if @organ.save
      redirect_to @organ, notice: "Organ was created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @organ.update(organ_params)
    redirect_to organ_path(@organ)
  end


  private

  def organ_params
    params.require(:organ).permit(:name, :description)
  end

  def set_organ
    @organ = Organ.find(params[:id])
  end
end
