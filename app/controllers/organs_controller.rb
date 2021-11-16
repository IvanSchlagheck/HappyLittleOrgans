class OrgansController < ApplicationController
  before_action :set_organ, only: [:show]

  def show
  end

  private
  def organ_params
    params.require(:organ).permit(:name, :description)
  end

  def set_organ
    @organ = Organ.find(params[:id])
  end
end
