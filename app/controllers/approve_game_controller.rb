class ApproveGameController < ApplicationController
  def update
    @game = Game.find(params[:id])
    @game.update_attribute :status, get_params
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Game was successfully approved!' }
    end
  end

  def get_params
    case params[:status]
    when 'approved'
      return 1
    else
      return 0
    end
  end
end