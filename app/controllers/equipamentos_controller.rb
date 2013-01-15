class EquipamentosController < ApplicationController
  # GET /equipamentos
  # GET /equipamentos.json
  def index
    @equipamentos = Equipamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipamentos }
    end
  end

  # GET /equipamentos/1
  # GET /equipamentos/1.json
  def show
    @equipamento = Equipamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipamento }
    end
  end

  # GET /equipamentos/new
  # GET /equipamentos/new.json
  def new
    @equipamento = Equipamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipamento }
    end
  end

  # GET /equipamentos/1/edit
  def edit
    @equipamento = Equipamento.find(params[:id])
  end

  # POST /equipamentos
  # POST /equipamentos.json
  def create
    @equipamento = Equipamento.new(params[:equipamento])

    respond_to do |format|
      if @equipamento.save
        format.html { redirect_to @equipamento, notice: 'Equipamento was successfully created.' }
        format.json { render json: @equipamento, status: :created, location: @equipamento }
      else
        format.html { render action: "new" }
        format.json { render json: @equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipamentos/1
  # PUT /equipamentos/1.json
  def update
    @equipamento = Equipamento.find(params[:id])

    respond_to do |format|
      if @equipamento.update_attributes(params[:equipamento])
        format.html { redirect_to @equipamento, notice: 'Equipamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipamentos/1
  # DELETE /equipamentos/1.json
  def destroy
    @equipamento = Equipamento.find(params[:id])
    @equipamento.destroy

    respond_to do |format|
      format.html { redirect_to equipamentos_url }
      format.json { head :no_content }
    end
  end
end
