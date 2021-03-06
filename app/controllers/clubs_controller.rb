# frozen_string_literal: true

class ClubsController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :set_club, only: %i[show edit update destroy]

  def index
    @clubs = Club.all
    @sorted_clubs = Club.all.order('name ASC')
  end

  def show
    @games = Game.approved.upcoming.order(:date)
    @teams = @club.teams
    @club_games = Game.approved
                      .upcoming
                      .from_team(@teams)
                      .order(:date)
                      .group_by { |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y") }
    @past_games = Game.approved
                      .past
                      .from_team(@teams)
                      .order(date: :desc)
                      .paginate(page: params[:page], per_page: 10)
  end

  def new
    @club = Club.new
    @competitions = Competition.all
  end

  def edit; end

  def create
    @club = Club.new(club_params)

    respond_to do |format|
      if @club.save
        format.html { redirect_to @club, notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: @club }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to @club, notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: @club }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url, notice: 'Club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_club
    @club = Club.friendly.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:name, :abbreviation, :slug, :logo,
                                 :website, :youtube, :facebook,
                                 :twitter, :instagram, :tiktok,
                                 competition_ids: [])
  end
end
