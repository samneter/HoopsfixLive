# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @games = Game.upcoming.order(:date)
    @grouped_games = Game.approved
                         .upcoming
                         .order(:date, :tip_time)
                         .group_by { |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y") }
    @unapproved_games = Game.unapproved
                            .order(:date, :tip_time)
                            .group_by { |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y") }
    @page_title = 'British Basketball Live Streams'
    @page_description = 'Directory of British basketball live streams'
    @page_keywords = 'basketball live streams, bbl live streams, nbl live'
    @counter_1st_number = Game.count.to_s.rjust(5, "0").split('').first
    @counter_2nd_number = Game.count.to_s.rjust(5, "0").split('').second
    @counter_3rd_number = Game.count.to_s.rjust(5, "0").split('').third
    @counter_4th_number = Game.count.to_s.rjust(5, "0").split('').fourth
    @counter_5th_number = Game.count.to_s.rjust(5, "0").split('').fifth
  end
end
