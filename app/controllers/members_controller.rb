class MembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_member, only: [:edit, :update, :basic]

  def index
    @members = Member.joins(:person).all.order('people.last_name', 'people.first_name', 'people.middle_name')
    @filter_categories = Member.all.where.not(country: nil).order(:country).pluck('DISTINCT country')

    if params.key?(:country)
      @filter_by = params[:country]
      @members = @members.where(country: @filter_by)
    end
  end

  def edit
    unless current_user.person&.member && current_user.person.member == @member
      redirect_to controller: 'members', action: 'index'
    end
  end

  def update
    unless current_user.person&.member && current_user.person.member == @member
      redirect_to controller: 'members', action: 'index'
    else
      @member.update(member_params)

      respond_to do |format|
        if @member.valid?
          format.html { redirect_to({ action: :index }, { notice: "Changes saved" }) }
        else
          format.html { redirect_to({ action: :edit }, { alert: "Could not save changes" }) }
        end
      end
    end
  end

  private

    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member)
            .permit(:spouse, :telephone, :address, :city, :state, :zip,
                    :country, :email, :children, :education, :profession)
    end
end
