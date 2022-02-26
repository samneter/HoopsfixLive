# frozen_string_literal: true

class CompetitionsController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :set_competition, only: %i[show edit update destroy]

  def index
    @competitions = Competition.all.order('name ASC')
  end

  def show
    @games = Game.approved.upcoming.order(:date)
    @grouped_games = Game.approved.upcoming
                         .from_competition(@competition)
                         .order(:date)
                         .group_by { |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y") }
    @past_games = Game.approved.past
                      .from_competition(@competition)
                      .order(date: :desc)
                      .paginate(page: params[:page], per_page: 10)
  end

  def new
    @competition = Competition.new
  end

  def edit; end

  def create
    @competition = Competition.new(competition_params)
    respond_to do |format|
      if @competition.save
        format.html { redirect_to @competition, notice: 'Competition was successfully created.' }
        format.json { render :show, status: :created, location: @competition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @competition.update(competition_params)
        format.html { redirect_to @competition, notice: 'Competition was successfully updated.' }
        format.json { render :show, status: :ok, location: @competition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @competition.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @competition.destroy
    respond_to do |format|
      format.html { redirect_to competitions_url, notice: 'Competition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_competition
    @competition = Competition.friendly.find(params[:id])
  end

  def competition_params
    params.require(:competition).permit(:name, :season, :slug, :logo, :website,
                                        :facebook, :youtube, :twitter,
                                        :instagram, :tiktok, :organisation_id)
  end
end
