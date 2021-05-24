class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:id])
  end

  private
    def mech_params
      params.permit(:name, :years_experience)
    end
end
