class FamilyMembersController < ApplicationController
  before_action :set_family_member, only: :show

  def show
    @father = @family_member.father
    @grandfather = @family_member.grandfather

    @children = FamilyMember.where(father: @family_member)
    if @family_member.father_id
      @siblings = FamilyMember.where(father_id: @family_member.father_id)
                              .where.not(id: @family_member.id)
    else
      @siblings = []
    end
  end

  private

    def set_family_member
      @family_member = FamilyMember.find(params[:id])
    end

    def family_member_params
      params.fetch(:family_member, {})
    end
end
