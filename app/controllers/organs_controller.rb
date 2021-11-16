class OrgansController < ApplicationController
  before_action :set_organ, only: [:show]

  
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

  private

  def organ_params
    params.require(:organ).permit(:name, :description)
  end

  def set_organ
    @organ = Organ.find(params[:id])
  end
end
