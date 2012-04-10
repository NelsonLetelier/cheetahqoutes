class LaptopsController < ApplicationController
  # GET /laptops
  # GET /laptops.json
  def index
    @laptops = Laptop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @laptops }
    end
  end

  # GET /laptops/1
  # GET /laptops/1.json
  def show
    @laptop = Laptop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @laptop }
    end
  end

  # GET /laptops/new
  # GET /laptops/new.json
  def new
    @laptop = Laptop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @laptop }
    end
  end

  # GET /laptops/1/edit
  def edit
    @laptop = Laptop.find(params[:id])
  end

  # POST /laptops
  # POST /laptops.json
  def create
    @laptop = Laptop.new(params[:laptop])

    respond_to do |format|
      if @laptop.save
        format.html { redirect_to @laptop, :notice => 'Laptop was successfully created.' }
        format.json { render :json => @laptop, :status => :created, :location => @laptop }
      else
        format.html { render :action => "new" }
        format.json { render :json => @laptop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /laptops/1
  # PUT /laptops/1.json
  def update
    @laptop = Laptop.find(params[:id])

    respond_to do |format|
      if @laptop.update_attributes(params[:laptop])
        format.html { redirect_to @laptop, :notice => 'Laptop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @laptop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /laptops/1
  # DELETE /laptops/1.json
  def destroy
    @laptop = Laptop.find(params[:id])
    @laptop.destroy

    respond_to do |format|
      format.html { redirect_to laptops_url }
      format.json { head :no_content }
    end
  end
end
