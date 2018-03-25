class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :edit, :update, :destroy]

  def index
    professionals = Professional.all.order(:last_name, :first_name)

    if params.key?(:category)
      @filter_by = params[:category]
      professionals = professionals.where(category: @filter_by)
    else
      @filter_categories = Professional.all.order(:category).pluck('DISTINCT category')
    end

    @professionals_by_category = professionals.group_by(&:category)
  end

  def show
  end

  private

    def set_professional
      @professional = Professional.find(params[:id])
    end
end
