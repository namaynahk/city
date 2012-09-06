class DeletesController < ApplicationController
  # GET /deletes
  # GET /deletes.json
  def index
    @deletes = Delete.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deletes }
    end
  end

  # GET /deletes/1
  # GET /deletes/1.json
  def show
    @delete = Delete.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delete }
    end
  end

  # GET /deletes/new
  # GET /deletes/new.json
  def new
    @delete = Delete.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delete }
    end
  end

  # GET /deletes/1/edit
  def edit
    @delete = Delete.find(params[:id])
  end

  # POST /deletes
  # POST /deletes.json
  def create
    @delete = Delete.new(params[:delete])

    respond_to do |format|
      if @delete.save
        format.html { redirect_to @delete, notice: 'Delete was successfully created.' }
        format.json { render json: @delete, status: :created, location: @delete }
      else
        format.html { render action: "new" }
        format.json { render json: @delete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deletes/1
  # PUT /deletes/1.json
  def update
    @delete = Delete.find(params[:id])

    respond_to do |format|
      if @delete.update_attributes(params[:delete])
        format.html { redirect_to @delete, notice: 'Delete was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deletes/1
  # DELETE /deletes/1.json
  def destroy
    @delete = Delete.find(params[:id])
    @delete.destroy

    respond_to do |format|
      format.html { redirect_to deletes_url }
      format.json { head :no_content }
    end
  end
end
