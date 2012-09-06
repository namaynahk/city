class GathersController < ApplicationController
  # GET /gathers
  # GET /gathers.json
  def index
    @gathers = Gather.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gathers }
    end
  end

  # GET /gathers/1
  # GET /gathers/1.json
  def show
    @gather = Gather.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gather }
    end
  end

  # GET /gathers/new
  # GET /gathers/new.json
  def new
    @gather = Gather.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gather }
    end
  end

  # GET /gathers/1/edit
  def edit
    @gather = Gather.find(params[:id])
  end

  # POST /gathers
  # POST /gathers.json
  def create
    @gather = Gather.new(params[:gather])

    respond_to do |format|
      if @gather.save
        format.html { redirect_to @gather, notice: 'Gather was successfully created.' }
        format.json { render json: @gather, status: :created, location: @gather }
      else
        format.html { render action: "new" }
        format.json { render json: @gather.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gathers/1
  # PUT /gathers/1.json
  def update
    @gather = Gather.find(params[:id])

    respond_to do |format|
      if @gather.update_attributes(params[:gather])
        format.html { redirect_to @gather, notice: 'Gather was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gather.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gathers/1
  # DELETE /gathers/1.json
  def destroy
    @gather = Gather.find(params[:id])
    @gather.destroy

    respond_to do |format|
      format.html { redirect_to gathers_url }
      format.json { head :no_content }
    end
  end
end
