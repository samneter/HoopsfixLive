class TeamsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_team, only: %i[ show edit update destroy ]

  # GET /teams or /teams.json
  def index
    @teams = Team.all
    @sorted_teams = Team.all.order('name ASC')
  end

  # GET /teams/1 or /teams/1.json
  def show
    @games = Game.approved.where('date >= ?', Date.current).order(:date)
    @team_games = Game.approved.where('(home_team_id = ? OR away_team_id = ?) AND date >= ?', @team.id, @team.id, Date.today).order(:date).group_by{ |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y")}
    @past_games = Game.approved.where('(home_team_id = ? OR away_team_id = ?) AND date < ?', @team.id, @team.id, Date.today).order(date: :desc).paginate(page: params[:page], per_page:10)
  end


  # GET /teams/new
  def new
    @team = Team.new
    @competitions = Competition.all
    @clubs = Club.all
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams or /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: "Team was successfully created." }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: "Team was successfully updated." }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: "Team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:name, :abbreviation, :logo, :website, :youtube, :facebook, :twitter, :instagram, :tiktok, :competition_ids=>[], :club_id=>[])
    end
end
