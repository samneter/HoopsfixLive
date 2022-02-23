# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :set_team, only: %i[show edit update destroy]

  def index
    @teams = Team.all
    @sorted_teams = Team.all.order('name ASC')
  end

  def show
    @games = Game.approved.upcoming.order(:date)
    @team_games = Game.approved.upcoming
                      .from_team(@team)
                      .order(:date)
                      .group_by { |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y") }
    @past_games = Game.approved.past
                      .order(date: :desc)
                      .paginate(page: params[:page], per_page: 10)
  end

  def new
    @team = Team.new
    @competitions = Competition.all
    @clubs = Club.all
  end

  def edit; end

  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_team
    @team = Team.friendly.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :abbreviation, :display_name,
                                 :logo, :website, :youtube, :facebook,
                                 :twitter, :instagram, :tiktok, :club_id,
                                 competition_ids: [])
  end
end
