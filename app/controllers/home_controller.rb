class HomeController < ApplicationController
  def index
    @games = Game.where('date >= ?', Date.current).order(:date)
    @streams = Stream.where('date >= ?', Date.today).order(:date)
    @grouped_games = Game.where('date >= ?', Date.today).order(:tip_time).group_by{ |g| g.date.strftime("%A %dth %B %Y")}
  end
end
