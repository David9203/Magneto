class CaractersController < ApplicationController
  before_action :set_caracter, only: [:show, :edit, :update, :destroy]

  # GET /caracters
  # GET /caracters.json
  def index
    @caracters = Caracter.all
  end

  # GET /caracters/1
  # GET /caracters/1.json
  def show
  end

  def contar
    @caracters = Caracter.all
    letras=Caracter.split
     counts = Hash.new(0)
     letras.each { |name| counts[name] += 1 }
while letras.counts > 4
  
end

  end

  # GET /caracters/new
  def new
    @caracter = Caracter.new
  end

  # GET /caracters/1/edit
  def edit
  end

  # POST /caracters
  # POST /caracters.json
  def create
    @caracter = Caracter.new(caracter_params)

    respond_to do |format|
      if @caracter.save
        format.html { redirect_to @caracter, notice: 'Caracter was successfully created.' }
        format.json { render :show, status: :created, location: @caracter }
      else
        format.html { render :new }
        format.json { render json: @caracter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracters/1
  # PATCH/PUT /caracters/1.json
  def update
    respond_to do |format|
      if @caracter.update(caracter_params)
        format.html { redirect_to @caracter, notice: 'Caracter was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracter }
      else
        format.html { render :edit }
        format.json { render json: @caracter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracters/1
  # DELETE /caracters/1.json
  def destroy
    @caracter.destroy
    respond_to do |format|
      format.html { redirect_to caracters_url, notice: 'Caracter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracter
      @caracter = Caracter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracter_params
      params.require(:caracter).permit(:texto)
    end
end
