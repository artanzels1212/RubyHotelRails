class Booker < ApplicationRecord

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |booker|
      booker.provider = auth.provider
      booker.uid = auth.uid
      booker.name = auth.info.name
      booker.email = auth.info.email
      booker.avtar = auth.info.image
      #booker.avtar_small = auth.raw_info.picture
      booker.oauth_token = auth.credentials.token
      booker.oauth_expires_at = Time.at(auth.credentials.expires_at)
      booker.save!
    end
  end


end
