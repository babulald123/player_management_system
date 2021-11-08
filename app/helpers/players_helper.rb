# frozen_string_literal: true

module PlayersHelper
  def avatar_for_player(player)
    if player.avatar?
      image_tag player.avatar.url(:thumb), class: 'avatar-image'
    else
      image_tag 'India.jpg', width: 80, class: 'avatar-image'
    end
  end
end
