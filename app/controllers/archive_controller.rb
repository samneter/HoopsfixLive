# frozen_string_literal: true

class ArchiveController < ApplicationController
  def index
    @past_games = Game.approved.past
                      .order(date: :desc)
                      .paginate(page: params[:page], per_page: 20)
  end
end
