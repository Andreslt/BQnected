class AlertaController < ApplicationController
  # GET /alerta
  # GET /alerta.json
  def index
    @alerta = Alerta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alerta }
    end
  end

  # GET /alerta/1
  # GET /alerta/1.json
  def show
    @alertum = Alerta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alertum }
    end
  end

  # GET /alerta/new
  # GET /alerta/new.json
  def new
    @alertum = Alerta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alertum }
    end
  end

  # GET /alerta/1/edit
  def edit
    @alertum = Alerta.find(params[:id])
  end

  # POST /alerta
  # POST /alerta.json
  def create
    @alertum = Alerta.new(params[:alertum])

    respond_to do |format|
      if @alertum.save
        format.html { redirect_to @alertum, notice: 'Alerta was successfully created.' }
        format.json { render json: @alertum, status: :created, location: @alertum }
      else
        format.html { render action: "new" }
        format.json { render json: @alertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alerta/1
  # PUT /alerta/1.json
  def update
    @alertum = Alerta.find(params[:id])

    respond_to do |format|
      if @alertum.update_attributes(params[:alertum])
        format.html { redirect_to @alertum, notice: 'Alerta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alerta/1
  # DELETE /alerta/1.json
  def destroy
    @alertum = Alerta.find(params[:id])
    @alertum.destroy

    respond_to do |format|
      format.html { redirect_to alerta_index_url }
      format.json { head :no_content }
    end
  end
end
