class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.login_field = :email
    config.crypto_provider = Authlogic::CryptoProviders::MD5
  end
end
