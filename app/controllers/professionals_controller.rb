class ProfessionalsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :set_professional, only: [:show, :edit, :update, :destroy]

  def index
    professionals = Professional.all.order(:last_name, :first_name)
    @filter_categories = Professional.all.order(:category).pluck('DISTINCT category')

    unless user_signed_in?
      professionals = professionals.where(private: false)
    end

    if params.key?(:category)
      @filter_by = params[:category]
      professionals = professionals.where(category: @filter_by)
    end

    @professionals_by_category = professionals.group_by(&:category)
  end

  def edit
    unless current_user.professional && current_user.professional == @professional
      redirect_to controller: 'professionals', action: 'index'
    end
  end

  def update
    unless current_user.professional && current_user.professional == @professional
      redirect_to controller: 'professionals', action: 'index'
    else
      @professional.update(professional_params)

      respond_to do |format|
        if @professional.valid?
          format.html { redirect_to({ action: :index }, { notice: "Changes saved" }) }
        else
          format.html { redirect_to({ action: :edit }, { alert: "Could not save changes" }) }
        end
      end
    end
  end

  private

    def set_professional
      @professional = Professional.find(params[:id])
    end

    def professional_params
      params.require(:professional).permit(
        :first_name, :middle_name, :last_name, :graduation_degree,
        :graduation_university, :graduation_year, :job_title, :job_company,
        :location, :telephone, :mobile, :fax, :email, :website, :category,
        :spec, :private
      )
    end
end
