class OrcamentosController < ApplicationController
  # GET /orcamentos
  # GET /orcamentos.json
  def index
    @orcamentos = Orcamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orcamentos }
    end
  end

  # GET /orcamentos/1
  # GET /orcamentos/1.json
  def show
    @orcamento = Orcamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orcamento }
    end
  end

  # GET /orcamentos/new
  # GET /orcamentos/new.json
  def new
    @orcamento = Orcamento.new
    @cliente = Cliente.find(params[:cliente_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orcamento }
    end
  end

  # GET /orcamentos/1/edit
  def edit
    @orcamento = Orcamento.find(params[:id])
    @cliente = Cliente.find(params[:cliente_id])
  end

  # POST /orcamentos
  # POST /orcamentos.json
  def create
    @orcamento = Orcamento.new(params[:orcamento].except(:cliente))
    @cliente = Cliente.find(params[:cliente_id])
    @orcamento.cliente = @cliente
    respond_to do |format|
      if @orcamento.save
        format.html { redirect_to @orcamento.cliente, notice: 'Orcamento was successfully created.' }
        format.json { render json: @orcamento, status: :created, location: @orcamento }
      else
        format.html { render action: "new" }
        format.json { render json: @orcamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orcamentos/1
  # PUT /orcamentos/1.json
  def update
    @orcamento = Orcamento.find(params[:id])

    respond_to do |format|
      if @orcamento.update_attributes(params[:orcamento])
        format.html { redirect_to @orcamento, notice: 'Orcamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orcamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamentos/1
  # DELETE /orcamentos/1.json
  def destroy
    @orcamento = Orcamento.find(params[:id])
    @orcamento.destroy

    respond_to do |format|
      format.html { redirect_to orcamentos_url }
      format.json { head :no_content }
    end
  end
end
