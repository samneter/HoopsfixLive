class LiveStatsController < ApplicationController
  before_action :set_live_stat, only: %i[ show edit update destroy ]

  # GET /live_stats or /live_stats.json
  def index
    @live_stats = LiveStat.all
  end

  # GET /live_stats/1 or /live_stats/1.json
  def show
  end

  # GET /live_stats/new
  def new
    @live_stat = LiveStat.new
  end

  # GET /live_stats/1/edit
  def edit
  end

  # POST /live_stats or /live_stats.json
  def create
    @live_stat = LiveStat.new(live_stat_params)

    respond_to do |format|
      if @live_stat.save
        format.html { redirect_to @live_stat, notice: "Live stat was successfully created." }
        format.json { render :show, status: :created, location: @live_stat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @live_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /live_stats/1 or /live_stats/1.json
  def update
    respond_to do |format|
      if @live_stat.update(live_stat_params)
        format.html { redirect_to @live_stat, notice: "Live stat was successfully updated." }
        format.json { render :show, status: :ok, location: @live_stat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @live_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /live_stats/1 or /live_stats/1.json
  def destroy
    @live_stat.destroy
    respond_to do |format|
      format.html { redirect_to live_stats_url, notice: "Live stat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_live_stat
      @live_stat = LiveStat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def live_stat_params
      params.require(:live_stat).permit(:live_stats_url)
    end
end
