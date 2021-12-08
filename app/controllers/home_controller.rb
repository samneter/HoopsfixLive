class HomeController < ApplicationController
  def index
    @games = Game.where('date >= ?', Date.current).order(:date)
    @grouped_games = Game.where('date >= ?', Date.today).order(:date, :tip_time).group_by{ |g| g.date.strftime("%A %d %B %Y")}

  end

end
