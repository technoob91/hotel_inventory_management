class PropertiesController < ApplicationController

  # GET /properties
  def index
    @properties = Property.all
    render json: @properties
  end

end
