# frozen_string_literal: true

class LiveStatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_live_stat, only: %i[show edit update destroy]

  def index
    @live_stats = LiveStat.all
  end

  def show; end

  # GET /live_stats/new
  def new
    @live_stat = LiveStat.new
  end

  def edit; end

  def create
    @live_stat = LiveStat.new(live_stat_params)

    respond_to do |format|
      if @live_stat.save
        format.html { redirect_to @live_stat, notice: 'Live stat was successfully created.' }
        format.json { render :show, status: :created, location: @live_stat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @live_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @live_stat.update(live_stat_params)
        format.html { redirect_to @live_stat, notice: 'Live stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @live_stat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @live_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @live_stat.destroy
    respond_to do |format|
      format.html { redirect_to live_stats_url, notice: 'Live stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_live_stat
    @live_stat = LiveStat.find(params[:id])
  end

  def live_stat_params
    params.require(:live_stat).permit(:live_stats_url)
  end
end
