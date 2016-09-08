class ServiceQualitiesController < ApplicationController

  def new
    @service_quality = ServiceQuality.new
  end
  
end
