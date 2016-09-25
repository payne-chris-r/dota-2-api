#
class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :profile_id

  def profile_id
    object.profile.id if object.profile
  end

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
