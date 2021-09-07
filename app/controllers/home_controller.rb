class HomeController < ApplicationController
  def index
    @games = Game.where('date >= ?', Date.today).order(:date)
    @streams = Stream.where('date >= ?', Date.today).order(:date)
  end
end
