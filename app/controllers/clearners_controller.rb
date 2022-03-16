class ClearnersController < ApplicationController
  def index
  end

  private

  def cleaner_params
    params.require(:cleaner).permit(city_ids: [])
  end
end
