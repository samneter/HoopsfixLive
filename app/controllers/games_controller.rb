class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]

  # GET /games or /games.json
  def index
      @games = Game.all
      @grouped_games = Game.order(:date, :tip_time).group_by{ |g| g.date.strftime("%A %-d#{g.date.day.ordinal} %B %Y")}
  end

  # GET /games/1 or /games/1.json
  def show
    @game = Game.friendly.find(params[:id])
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: "Game was successfully submitted for approval." }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: "Game was successfully updated." }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.friendly.find(params[:id])
    end



    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game)
            .permit(:home_club_id, :away_club_id, :competition_id, :live_stat_url, :tip_time, :date, :stream_url)
            .tap do |p|
         p[:tip_time] = p[:tip_time].to_time.strftime("%H%M")
      end
    end
end
