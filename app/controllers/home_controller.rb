class HomeController < ApplicationController
  def index
    @games = Game.where('date >= ?', Date.current).order(:date)
    @grouped_games = Game.approved.where('date >= ?', Date.today).order(:date, :tip_time).group_by{ |g| g.date.strftime("%A %d#{g.date.day.ordinal} %B %Y")}
    @unapproved_games = Game.unapproved.where('date >= ?', Date.today).order(:date, :tip_time).group_by{ |g| g.date.strftime("%A %d#{g.date.day.ordinal} %B %Y")}

  end

end
