module UserHelper
  def avatar_url(user)
    if user.photo.attached?
      cl_image_path user.photo.key
    else
      asset_url "avatar.jpg"
    end
  end
end
