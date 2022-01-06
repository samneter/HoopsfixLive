class ArchiveController < ApplicationController
  def index
      @past_games = Game.where('date < ?', Date.current).order(date: :desc).paginate(page: params[:page], per_page:20)
  end
end