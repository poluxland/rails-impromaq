class EquiposController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_equipo, only: [:show, :edit, :update, :destroy]

  # GET /equipos
  # GET /equipos.json
  def index
    @equipos = Equipo.all
  end

  # :nombre, collection: ["OL03", "HQPTA31", "HQPTA32","HQPTA33", "BRR17", "HQPTA21", "HQPTA22"]
  def brr17check
    @equipo = Equipo.where(nombre: "BRR17").last
  end

  def ol03check
    @equipo = Equipo.where(nombre: "OL03").last
  end

  def hqpta31check
    @equipo = Equipo.where(nombre: "HQPTA31").last
  end

  def hqpta32check
    @equipo = Equipo.where(nombre: "HQPTA32").last
  end

  def hqpta33check
    @equipo = Equipo.where(nombre: "HQPTA33").last
  end


  # GET /equipos/1
  # GET /equipos/1.json
  def show
  end

  # GET /equipos/new
  def new
    @equipo = Equipo.new
  end

  # GET /equipos/1/edit
  def edit
  end

  # POST /equipos
  # POST /equipos.json
  def create
    @equipo = Equipo.new(equipo_params)

    respond_to do |format|
      if @equipo.save
        format.html { redirect_to @equipo, notice: 'Equipo was successfully created.' }
        format.json { render :show, status: :created, location: @equipo }
      else
        format.html { render :new }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipos/1
  # PATCH/PUT /equipos/1.json
  def update
    respond_to do |format|
      if @equipo.update(equipo_params)
        format.html { redirect_to @equipo, notice: 'Equipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipo }
      else
        format.html { render :edit }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipos/1
  # DELETE /equipos/1.json
  def destroy
    @equipo.destroy
    respond_to do |format|
      format.html { redirect_to equipos_url, notice: 'Equipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipo
      @equipo = Equipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipo_params
      params.require(:equipo).permit(:nombre, :operador, :horometro, :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10, :c11, :c12, :c13, :c14, :c15, :c16, :c17, :c18, :c19, :c20, :c21, :c22, :c23, :c24, :c25, :c26, :c27, :c28, :c29, :c30, :comentarios)
    end
end
