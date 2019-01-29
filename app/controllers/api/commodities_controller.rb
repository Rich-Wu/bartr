class Api::CommoditiesController < Api::BaseController
  def all
    respond_with Commodity.all
  end
end
