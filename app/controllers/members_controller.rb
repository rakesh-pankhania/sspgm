class MembersController < ApplicationController
  before_action :authenticate_user!

  def index
    @members = Member.all.order(:last_name, :first_name, :middle_name)
    @filter_categories = Member.all.order(:country).pluck('DISTINCT country')

    if params.key?(:country)
      @filter_by = params[:country]
      @members = @members.where(country: @filter_by)
    end
  end
end
