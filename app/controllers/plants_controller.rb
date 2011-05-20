class PlantsController < ApplicationController
  include PlantsHelper
  # GET /calculate_harvest_time
  def calculate_harvest_time
    @plant = Plant.find(params[:id])
    @selected_seed_day = params[:harvest_time_calculation][:seed_day]
    @selected_seed_month =  params[:harvest_time_calculation][:seed_month]
    seed_time = DateInYear.new day_from_rendered_seed_time(@selected_seed_day),month_from_rendered_seed_time(@selected_seed_month)
    minimal_harvest_time = @plant.calculate_minimum_harvest_time seed_time
    maximal_harvest_time = @plant.calculate_maximum_harvest_time seed_time
    @harvest_time = render_harvest_time(minimal_harvest_time, maximal_harvest_time)
    render :action => "show"
  end

  # GET /plants
  # GET /plants.xml
  def index
    @plants = Plant.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plants }
    end
  end

  # GET /plants/1
  # GET /plants/1.xml
  def show
    @plant = Plant.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plant }
    end
  end

  # GET /plants/new
  # GET /plants/new.xml
  def new
    @plant = Plant.new
    @families = Family.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plant }
    end
  end

  # GET /plants/1/edit
  def edit
    @plant = Plant.find(params[:id])
    @families = Family.all
  end

  # POST /plants
  # POST /plants.xml
  def create
    @plant = Plant.new(params[:plant])
    respond_to do |format|
      if @plant.save
        format.html { redirect_to(@plant, :notice => 'Plant was successfully created.') }
        format.xml  { render :xml => @plant, :status => :created, :location => @plant }
      else
        @families = Family.all
        format.html { render :action => "new" }
        format.xml  { render :xml => @plant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plants/1
  # PUT /plants/1.xml
  def update
    @plant = Plant.find(params[:id])
 

    respond_to do |format|
      if @plant.update_attributes(params[:plant])
        format.html { redirect_to(@plant, :notice => 'Plant was successfully updated.') }
        format.xml  { head :ok }
      else
        @families = Family.all
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.xml
  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    respond_to do |format|
      format.html { redirect_to(plants_url) }
      format.xml  { head :ok }
    end
  end
end
