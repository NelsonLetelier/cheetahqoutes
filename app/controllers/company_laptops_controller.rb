class CompanyLaptopsController < ApplicationController
  # GET /company_laptops
  # GET /company_laptops.json
  def index
    @company_laptops = CompanyLaptop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @company_laptops }
    end
  end

  # GET /company_laptops/1
  # GET /company_laptops/1.json
  def show
    @company_laptop = CompanyLaptop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @company_laptop }
    end
  end

  # GET /company_laptops/new
  # GET /company_laptops/new.json
  def new
    @company_laptop = CompanyLaptop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @company_laptop }
    end
  end

  # GET /company_laptops/1/edit
  def edit
    @company_laptop = CompanyLaptop.find(params[:id])
  end

  # POST /company_laptops
  # POST /company_laptops.json
  def create
    @company_laptop = CompanyLaptop.new(params[:company_laptop])

    respond_to do |format|
      if @company_laptop.save
        format.html { redirect_to @company_laptop, :notice => 'Company laptop was successfully created.' }
        format.json { render :json => @company_laptop, :status => :created, :location => @company_laptop }
      else
        format.html { render :action => "new" }
        format.json { render :json => @company_laptop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /company_laptops/1
  # PUT /company_laptops/1.json
  def update
    @company_laptop = CompanyLaptop.find(params[:id])

    respond_to do |format|
      if @company_laptop.update_attributes(params[:company_laptop])
        format.html { redirect_to @company_laptop, :notice => 'Company laptop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @company_laptop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /company_laptops/1
  # DELETE /company_laptops/1.json
  def destroy
    @company_laptop = CompanyLaptop.find(params[:id])
    @company_laptop.destroy

    respond_to do |format|
      format.html { redirect_to company_laptops_url }
      format.json { head :no_content }
    end
  end
end
