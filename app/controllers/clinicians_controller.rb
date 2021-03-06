class CliniciansController < ApplicationController
  # GET /clinicians
  # GET /clinicians.json
  def index
    @clinicians = Clinician.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clinicians }
    end
  end

  # GET /clinicians/1
  # GET /clinicians/1.json
  def show
    @clinician = Clinician.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clinician }
    end
  end

  # GET /clinicians/new
  # GET /clinicians/new.json
  def new
    @clinician = Clinician.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clinician }
    end
  end

  # GET /clinicians/1/edit
  def edit
    @clinician = Clinician.find(params[:id])
  end

  # POST /clinicians
  # POST /clinicians.json
  def create
    @clinician = Clinician.new(params[:clinician])

    respond_to do |format|
      if @clinician.save
        format.html { redirect_to @clinician, notice: 'Clinician was successfully created.' }
        format.json { render json: @clinician, status: :created, location: @clinician }
      else
        format.html { render action: "new" }
        format.json { render json: @clinician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clinicians/1
  # PUT /clinicians/1.json
  def update
    @clinician = Clinician.find(params[:id])

    respond_to do |format|
      if @clinician.update_attributes(params[:clinician])
        format.html { redirect_to @clinician, notice: 'Clinician was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinicians/1
  # DELETE /clinicians/1.json
  def destroy
    @clinician = Clinician.find(params[:id])
    @clinician.destroy

    respond_to do |format|
      format.html { redirect_to clinicians_url }
      format.json { head :no_content }
    end
  end
end
