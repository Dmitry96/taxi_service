class ServiceQualitiesController < ApplicationController

  def new
    @service_quality = ServiceQuality.new
  end
  
  def create
    @service_quality = ServiceQuality.new service_params
    if @service_quality.save
      redirect_to new_service_quality_path, :notice => 'Спасибо за ваш отзыва!!'
    else
      render :new
    end
  end


  private
  
    def service_params
      params.require(:service_quality).permit(:theme, :your_name, :phone_number, :your_email_adress, :comment)
    end
end
