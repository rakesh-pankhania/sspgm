class PeopleController < ApplicationController
  before_action :set_person, only: [:edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to(members_path, { notice: 'Changes saved' }) }
      else
        format.html { redirect_to({ action: :edit }, { alert: "Could not save changes" }) }
      end
    end
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:first_name, :middle_name, :last_name)
    end
end
