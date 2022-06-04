class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  def index
    businesses = Business.where(deleted: false).order(:name)
    @filter_categories = Business.all.order(:category).pluck('DISTINCT category')

    if params.key?(:category)
      @filter_by = params[:category]
      businesses = businesses.where(category: @filter_by)
    end

    @businesses_by_category = businesses.group_by(&:category)
  end

  private
    def set_business
      @business = Business.find(params[:id])
    end
end
