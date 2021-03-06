class User < ApplicationRecord
  has_secure_password
  api_guard_associations blacklisted_token: 'blacklisted_tokens'
  has_many :blacklisted_tokens, dependent: :delete_all
  enum role: { super_admin: 'super_admin', admin: 'admin' }, _default: :admin

  # Todo: add cron job to prevent blacklisted_token table growing
  # https://github.com/Gokul595/api_guard#token-blacklisting
end
