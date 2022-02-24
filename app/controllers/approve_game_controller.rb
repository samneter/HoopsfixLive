# frozen_string_literal: true

class ApproveGameController < ApplicationController
  before_action :authenticate_user!, only: [:update]

  def update
    @game = Game.friendly.find(params[:id])
    @game.update_attribute :status, approval_params
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Game was successfully approved!' }
    end
  end

  def approval_params
    case params[:status]
    when 'approved'
      1
    else
      0
    end
  end
end
