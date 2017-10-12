module CommentsHelper
  def email_linkified_commenter_name(comment)
    commenter_name = "#{comment.first_name} #{comment.last_name}"
    return commenter_name if comment.email.blank?
    link_to commenter_name, "mailto:#{comment.email}"
  end
end
