class DependentsController < ApplicationController
  before_action :set_dependent, only: [:show, :edit, :update, :destroy]
  before_action :validate_user!, except: [:index, :new,:create, :edit, :update, :show, :destroy]
  # GET /dependents
  # GET /dependents.json
  def index
    @dependents = Dependent.all
  end

  # GET /dependents/1
  # GET /dependents/1.json
  def show
  end

  # GET /dependents/new
  def new
    @dependent = Dependent.new
  end

  # GET /dependents/1/edit
  def edit
  end

  # POST /dependents
  # POST /dependents.json
  def create
    @dependent = Dependent.new(dependent_params)

    respond_to do |format|
      if @dependent.save
        format.html { redirect_to @dependent, notice: 'Dependent was successfully created.' }
        format.json { render :show, status: :created, location: @dependent }
      else
        format.html { render :new }
        format.json { render json: @dependent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependents/1
  # PATCH/PUT /dependents/1.json
  def update
    respond_to do |format|
      if @dependent.update(dependent_params)
        format.html { redirect_to @dependent, notice: 'Dependent was successfully updated.' }
        format.json { render :show, status: :ok, location: @dependent }
      else
        format.html { render :edit }
        format.json { render json: @dependent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependents/1
  # DELETE /dependents/1.json
  def destroy
    @dependent.destroy
    respond_to do |format|
      format.html { redirect_to dependents_url, notice: 'Dependent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependent
      @dependent = Dependent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dependent_params
      params.require(:dependent).permit(:relationship, :d_name, :d_email, :d_contact, :d_blood_group, :d_date_of_birth, :weight, :height, :user_id)
    end
end
