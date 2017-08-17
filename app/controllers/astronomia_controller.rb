class AstronomiaController < ApplicationController
  before_action :set_astronomium, only: [:show, :edit, :update, :destroy]

  # GET /astronomia
  # GET /astronomia.json
  def index
    @astronomia = Astronomium.all
  end

  # GET /astronomia/1
  # GET /astronomia/1.json
  def show
  end

  # GET /astronomia/new
  def new
    @astronomium = Astronomium.new
  end

  # GET /astronomia/1/edit
  def edit
  end

  # POST /astronomia
  # POST /astronomia.json
  def create
    @astronomium = Astronomium.new(astronomium_params)

    respond_to do |format|
      if @astronomium.save
        format.html { redirect_to @astronomium, notice: 'Registro Creado con Exito.' }
        format.json { render :show, status: :created, location: @astronomium }
      else
        format.html { render :new }
        format.json { render json: @astronomium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /astronomia/1
  # PATCH/PUT /astronomia/1.json
  def update
    respond_to do |format|
      if @astronomium.update(astronomium_params)
        format.html { redirect_to @astronomium, notice: 'Registro Actualizado con Exito.' }
        format.json { render :show, status: :ok, location: @astronomium }
      else
        format.html { render :edit }
        format.json { render json: @astronomium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /astronomia/1
  # DELETE /astronomia/1.json
  def destroy
    @astronomium.destroy
    respond_to do |format|
      format.html { redirect_to astronomia_url, notice: 'Registro Eliminado con Exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_astronomium
      @astronomium = Astronomium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def astronomium_params
      params.require(:astronomium).permit(:Nombre, :Categoria, :Descripcion)
    end
end
