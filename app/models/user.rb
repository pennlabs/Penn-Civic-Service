class User < ActiveRecord::Base
  before_create :confirmation_token
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :username, length: { minimum: 2 }
  validates_uniqueness_of :username
  validates :email, presence: true
  validates :org_name, presence: true
  validates :org_url, presence: true
  has_many :events, dependent: :destroy

  has_secure_password

  private

  def confirmation_token
    if confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end
end
