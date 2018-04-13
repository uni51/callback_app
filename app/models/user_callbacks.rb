class UserCallbacks
  def before_create(user)
    user.age = 18 if user.age.blank?
  end
end
