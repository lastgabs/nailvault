class NailPolishesController < ApplicationController
  before_action :set_nail_polish, only: [:show, :edit, :update, :destroy]

  # GET /nail_polishes
  # GET /nail_polishes.json
  def index
    @nail_polishes = NailPolish.all
  end

  # GET /nail_polishes/1
  # GET /nail_polishes/1.json
  def show
  end

  # GET /nail_polishes/new
  def new
    @nail_polish = NailPolish.new
  end

  # GET /nail_polishes/1/edit
  def edit
  end

  # POST /nail_polishes
  # POST /nail_polishes.json
  def create
    @nail_polish = NailPolish.new(nail_polish_params)

    respond_to do |format|
      if @nail_polish.save
        format.html { redirect_to @nail_polish, notice: 'Nail polish was successfully created.' }
        format.json { render :show, status: :created, location: @nail_polish }
      else
        format.html { render :new }
        format.json { render json: @nail_polish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nail_polishes/1
  # PATCH/PUT /nail_polishes/1.json
  def update
    respond_to do |format|
      if @nail_polish.update(nail_polish_params)
        format.html { redirect_to @nail_polish, notice: 'Nail polish was successfully updated.' }
        format.json { render :show, status: :ok, location: @nail_polish }
      else
        format.html { render :edit }
        format.json { render json: @nail_polish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nail_polishes/1
  # DELETE /nail_polishes/1.json
  def destroy
    @nail_polish.destroy
    respond_to do |format|
      format.html { redirect_to nail_polishes_url, notice: 'Nail polish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nail_polish
      @nail_polish = NailPolish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nail_polish_params
      params.require(:nail_polish).permit(:name, :size, :color, :brand_id, :collection_id)
    end
end
