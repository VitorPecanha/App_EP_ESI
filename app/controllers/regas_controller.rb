class RegasController < ApplicationController
  before_action :set_rega, only: %i[ show edit update destroy ]

  # GET /regas or /regas.json
  def index
    @regas = Rega.all
  end

  # GET /regas/1 or /regas/1.json
  def show
  end

  # GET /regas/new
  def new
    @rega = Rega.new
  end

  # GET /regas/1/edit
  def edit
  end

  # POST /regas or /regas.json
  def create
    @rega = Rega.new(rega_params)

    respond_to do |format|
      if @rega.save
        format.html { redirect_to rega_url(@rega), notice: "Registro da rega foi criado." }
        format.json { render :show, status: :created, location: @rega }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regas/1 or /regas/1.json
  def update
    respond_to do |format|
      if @rega.update(rega_params)
        format.html { redirect_to rega_url(@rega), notice: "Registro da rega foi atualizado." }
        format.json { render :show, status: :ok, location: @rega }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regas/1 or /regas/1.json
  def destroy
    @rega.destroy

    respond_to do |format|
      format.html { redirect_to regas_url, notice: "Registro da rega foi apagado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rega
      @rega = Rega.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rega_params
      params.require(:rega).permit(:planta_nome, :dia, :mes, :hora)
    end
end
