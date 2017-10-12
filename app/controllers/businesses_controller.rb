class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  def index
    @businesses = Business.all.order(:name)

    if params.key?(:category)
      @filter_by = params[:category]
      @businesses = @businesses.where(category: @filter_by)
    else
      @filter_categories = Business.all.order(:category).pluck('DISTINCT category')
    end
  end

  def show
  end

  private
    def set_business
      @business = Business.find(params[:id])
    end
end
