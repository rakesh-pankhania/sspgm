module MembersHelper
  def member_name(member)
    [member.first_name, member.middle_name, member.last_name].flatten.join(" ")
  end
end
