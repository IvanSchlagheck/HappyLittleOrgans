class OrgansController < ApplicationController
  before_action :set_organ, only: [:show, :update, :edit]

  def show
  end

  def index
    @organs = Organ.all
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
