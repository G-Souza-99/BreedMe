module ChatHelper
  def chat_avatar(chat, user)
    user_avatar = chat.owner
    user_avatar = chat.user if chat.owner == user

    if user_avatar.photo.attached?
      cl_image_tag user_avatar.photo.key, class: "avatar"
    else
      image_tag "avatar.jpg", class: "avatar"
    end
  end
end
