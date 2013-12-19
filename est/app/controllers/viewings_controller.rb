class ViewingsController < ApplicationController
  # GET /viewings
  # GET /viewings.json
  def index
    @viewings = Viewing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @viewings }
    end
  end

  # GET /viewings/1
  # GET /viewings/1.json
  def show
    @viewing = Viewing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @viewing }
    end
  end

  # GET /viewings/new
  # GET /viewings/new.json
  def new
    @viewing = Viewing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @viewing }
    end
  end

  # GET /viewings/1/edit
  def edit
    @viewing = Viewing.find(params[:id])
  end

  # POST /viewings
  # POST /viewings.json
  def create
    @viewing = Viewing.new(params[:viewing])

    respond_to do |format|
      if @viewing.save
        format.html { redirect_to @viewing, notice: 'Viewing was successfully created.' }
        format.json { render json: @viewing, status: :created, location: @viewing }
      else
        format.html { render action: "new" }
        format.json { render json: @viewing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /viewings/1
  # PUT /viewings/1.json
  def update
    @viewing = Viewing.find(params[:id])

    respond_to do |format|
      if @viewing.update_attributes(params[:viewing])
        format.html { redirect_to @viewing, notice: 'Viewing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @viewing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewings/1
  # DELETE /viewings/1.json
  def destroy
    @viewing = Viewing.find(params[:id])
    @viewing.destroy

    respond_to do |format|
      format.html { redirect_to viewings_url }
      format.json { head :no_content }
    end
  end
end
