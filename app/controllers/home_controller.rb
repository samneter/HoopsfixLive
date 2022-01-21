class HomeController < ApplicationController
  def index
    @games = Game.where('date >= ?', Date.current).order(:date)
    @grouped_games = Game.approved.where('date >= ?', Date.today).order(:date, :tip_time).group_by{ |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y")}
    @unapproved_games = Game.unapproved.order(:date, :tip_time).group_by{ |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y")}
    @page_title = 'British Basketball Live Streams'
    @page_description = 'Directory of British basketball live streams'
    @page_keywords = 'basketball live streams, bbl live streams, nbl live'
  end

end
