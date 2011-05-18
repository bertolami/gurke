class BedsController < ApplicationController
  # GET /beds
  # GET /beds.xml
  def index
    @beds = Bed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beds }
    end
  end

  # GET /beds/1
  # GET /beds/1.xml
  def show
    @bed = Bed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bed }
    end
  end

  # GET /beds/new
  # GET /beds/new.xml
  def new
    @bed = Bed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bed }
    end
  end

  # GET /beds/1/edit
  def edit
    @bed = Bed.find(params[:id])
  end

  # POST /beds
  # POST /beds.xml
  def create
    @bed = Bed.new(params[:bed])

    respond_to do |format|
      if @bed.save
        format.html { redirect_to(@bed, :notice => 'Bed was successfully created.') }
        format.xml  { render :xml => @bed, :status => :created, :location => @bed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beds/1
  # PUT /beds/1.xml
  def update
    @bed = Bed.find(params[:id])

    respond_to do |format|
      if @bed.update_attributes(params[:bed])
        format.html { redirect_to(@bed, :notice => 'Bed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beds/1
  # DELETE /beds/1.xml
  def destroy
    @bed = Bed.find(params[:id])
    @bed.destroy

    respond_to do |format|
      format.html { redirect_to(beds_url) }
      format.xml  { head :ok }
    end
  end
end
