# frozen_string_literal: true

class StreamsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_stream, only: %i[show edit update destroy]

  def index
    @games = Game.all
    @grouped_streams = Game.order(:date, :tip_time)
                           .group_by { |g| g.date.strftime('%A %-d %B %Y') }
  end

  def show
    puts '#####################'
    puts @stream.attributes
    puts @stream.game_id
  end

  def new
    @stream = Stream.new
  end

  def edit; end

  def create
    # @@@
    sp = stream_params
    comp_id = sp[:competition_id]
    away_team_id = sp[:away_team_id]
    home_team_id = sp[:home_team_id]
    stream_url = sp[:stream_url]
    live_stats_url = sp[:live_stats_url]
    tip_time = sp[:tip_time]
    date = sp[:date]
    @game = Game.create(competition_id: comp_id, away_team_id: away_team_id, home_team_id: home_team_id, tip_time: tip_time, date: date)
    @stream = @game.create_stream(stream_url: stream_url)
    @live_stat = @game.create_live_stat(live_stats_url: live_stats_url)
    @live_stat.save
    @game.update(live_stats_id: @live_stat.id, stream_id: @stream.id)

    respond_to do |format|
      if @stream.save
        format.html { redirect_to @stream, notice: 'Stream was successfully created.' }
        format.json { render :show, status: :created, location: @stream }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stream.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @stream.update(stream_params)
        format.html { redirect_to @stream, notice: 'Stream was successfully updated.' }
        format.json { render :show, status: :ok, location: @stream }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stream.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stream.destroy
    respond_to do |format|
      format.html { redirect_to streams_url, notice: 'Stream was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_stream
    @stream = Stream.find(params[:id])
  end

  def stream_params
    params.require(:stream).permit(:home_team_id, :away_team_id, :competition_id,
                                   :live_stats_url, :tip_time, :date, :stream_url,
                                   :live_stats_url)
  end
end
