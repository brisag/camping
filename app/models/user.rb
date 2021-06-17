class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  before_save :create_api_key

  def create_api_key
    self.api_key = SecureRandom.uuid
  end
end
