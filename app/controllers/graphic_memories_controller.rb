class GraphicMemoriesController < ApplicationController
  # GET /graphic_memories
  # GET /graphic_memories.json
  def index
    @graphic_memories = GraphicMemory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @graphic_memories }
    end
  end

  # GET /graphic_memories/1
  # GET /graphic_memories/1.json
  def show
    @graphic_memory = GraphicMemory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @graphic_memory }
    end
  end

  # GET /graphic_memories/new
  # GET /graphic_memories/new.json
  def new
    @graphic_memory = GraphicMemory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @graphic_memory }
    end
  end

  # GET /graphic_memories/1/edit
  def edit
    @graphic_memory = GraphicMemory.find(params[:id])
  end

  # POST /graphic_memories
  # POST /graphic_memories.json
  def create
    @graphic_memory = GraphicMemory.new(params[:graphic_memory])

    respond_to do |format|
      if @graphic_memory.save
        format.html { redirect_to @graphic_memory, :notice => 'Graphic memory was successfully created.' }
        format.json { render :json => @graphic_memory, :status => :created, :location => @graphic_memory }
      else
        format.html { render :action => "new" }
        format.json { render :json => @graphic_memory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /graphic_memories/1
  # PUT /graphic_memories/1.json
  def update
    @graphic_memory = GraphicMemory.find(params[:id])

    respond_to do |format|
      if @graphic_memory.update_attributes(params[:graphic_memory])
        format.html { redirect_to @graphic_memory, :notice => 'Graphic memory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @graphic_memory.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /graphic_memories/1
  # DELETE /graphic_memories/1.json
  def destroy
    @graphic_memory = GraphicMemory.find(params[:id])
    @graphic_memory.destroy

    respond_to do |format|
      format.html { redirect_to graphic_memories_url }
      format.json { head :no_content }
    end
  end
end
