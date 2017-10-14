class MembersController < ApplicationController
  def index
    @members = Member.all.order(:last_name, :first_name, :middle_name)

    if params.key?(:country)
      @filter_by = params[:country]
      @members = @members.where(country: @filter_by)
    else
      @filter_categories = Member.all.order(:country).pluck('DISTINCT country')
    end
  end
end
