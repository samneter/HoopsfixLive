# frozen_string_literal: true

class ArchiveController < ApplicationController
  def index
    @past_games = Game.all.approved
                      .past
                      .order(date: :desc)
                      .paginate(page: params[:page], per_page: 10)
  end
end
