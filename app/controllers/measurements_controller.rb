class MeasurementsController < ApplicationController
  def index
    @measurements = Measurement.all
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @measurement = Measurement.find(params[:id])
  end
  
  def new
    @measurement = Measurement.new
  end
  
  def create
    @measurement = Measurement.new(params[:measurement])

    if @measurement.save
      redirect_to measurement_url(@measurement), :notice => 'Measurement successfully added.'
    else
      redirect_to new_measurement_url
    end
  end

  def edit
    @measurement = Measurement.find(params[:id])
  end

  def update
    @measurement = Measurement.find(params[:id])
    if @measurement.update_attributes(params[:measurement])
      redirect_to measurements_path, :notice => 'Updated measurement information successfully.'
    else
      render :action => 'edit'
    end
  end
end
