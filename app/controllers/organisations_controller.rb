class OrganisationsController < ApplicationController
  before_action :set_organisation, only: %i[ show edit update destroy ]

  # GET /organisations or /organisations.json
  def index
    @organisations = Organisation.all
  end

  # GET /organisations/1 or /organisations/1.json
  def show
  end

  # GET /organisations/new
  def new
    @organisation = Organisation.new
  end

  # GET /organisations/1/edit
  def edit
  end

  # POST /organisations or /organisations.json
  def create
    @organisation = Organisation.new(organisation_params)

    respond_to do |format|
      if @organisation.save
        format.html { redirect_to @organisation, notice: "Organisation was successfully created." }
        format.json { render :show, status: :created, location: @organisation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organisations/1 or /organisations/1.json
  def update
    respond_to do |format|
      if @organisation.update(organisation_params)
        format.html { redirect_to @organisation, notice: "Organisation was successfully updated." }
        format.json { render :show, status: :ok, location: @organisation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organisations/1 or /organisations/1.json
  def destroy
    @organisation.destroy
    respond_to do |format|
      format.html { redirect_to organisations_url, notice: "Organisation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organisation
      @organisation = Organisation.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organisation_params
      params.require(:organisation).permit(:name, :logo, :abbreviation)
    end
end
