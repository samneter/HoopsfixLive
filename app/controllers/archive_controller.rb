class ArchiveController < ApplicationController
  def index
      @games = Game.where('date >= ?', Date.current).order(:date)
      @grouped_games = Game.where('date < ?', Date.today).order(date: :desc).group_by{ |g| g.date.strftime("%A %-d %B %Y")}
      @past_games = Game.where('date < ?', Date.current).order(:date)
  end
end