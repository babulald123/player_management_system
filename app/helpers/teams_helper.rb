# frozen_string_literal: true

module TeamsHelper
  def avatar_for_team(team)
    if team.avatar?
      image_tag team.avatar.url(:thumb), class: 'avatar-image'
    # elsif "#{team.name}.jpeg".present?
    #   byebug
    #   image_tag "#{team.name}.jpeg", width: 80, class: 'avatar-image'
    else
      image_tag 'India.jpg', class: 'avatar-image'
    end
  end
end
