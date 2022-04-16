# frozen_string_literal: true

class GamesController < ApplicationController
  before_action :authenticate_user!, except: %i[show new create index]
  before_action :set_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
    @grouped_games = Game.order(:date, :tip_time).group_by { |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y") }
  end

  def show
    @game = Game.friendly.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def edit; end

  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        AdminMailer.submission_email(@user).deliver_now
        format.html { redirect_to @game, notice: 'Game was successfully submitted for approval.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_game
    @game = Game.friendly.find(params[:id])
  end

  def game_params
    params.require(:game)
          .permit(:home_team_id, :away_team_id, :competition_id, :live_stat_url, :tip_time, :date, :stream_url)
          .tap do |p|
      p[:tip_time] = p[:tip_time].to_time.strftime('%H%M')
    end
  end
end
