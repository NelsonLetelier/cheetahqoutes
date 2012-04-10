class HardDrivesController < ApplicationController
  # GET /hard_drives
  # GET /hard_drives.json
  def index
    @hard_drives = HardDrive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @hard_drives }
    end
  end

  # GET /hard_drives/1
  # GET /hard_drives/1.json
  def show
    @hard_drife = HardDrive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @hard_drife }
    end
  end

  # GET /hard_drives/new
  # GET /hard_drives/new.json
  def new
    @hard_drife = HardDrive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @hard_drife }
    end
  end

  # GET /hard_drives/1/edit
  def edit
    @hard_drife = HardDrive.find(params[:id])
  end

  # POST /hard_drives
  # POST /hard_drives.json
  def create
    @hard_drife = HardDrive.new(params[:hard_drife])

    respond_to do |format|
      if @hard_drife.save
        format.html { redirect_to @hard_drife, :notice => 'Hard drive was successfully created.' }
        format.json { render :json => @hard_drife, :status => :created, :location => @hard_drife }
      else
        format.html { render :action => "new" }
        format.json { render :json => @hard_drife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hard_drives/1
  # PUT /hard_drives/1.json
  def update
    @hard_drife = HardDrive.find(params[:id])

    respond_to do |format|
      if @hard_drife.update_attributes(params[:hard_drife])
        format.html { redirect_to @hard_drife, :notice => 'Hard drive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @hard_drife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hard_drives/1
  # DELETE /hard_drives/1.json
  def destroy
    @hard_drife = HardDrive.find(params[:id])
    @hard_drife.destroy

    respond_to do |format|
      format.html { redirect_to hard_drives_url }
      format.json { head :no_content }
    end
  end
end
