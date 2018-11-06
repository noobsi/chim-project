module UsersHelper
  def gravatar_for user
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "anon.jpg"
    image_tag(gravatar_url, alt: user.user_name, class: "gravatar")
  end
end
