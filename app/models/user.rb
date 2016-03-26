class User < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :username, length: { minimum: 2 }
  validates_uniqueness_of :username
  validates :email, presence: true
  validates :org_name, presence: true
  validates :org_url, presence: true
  validates :org_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

  has_many :events, dependent: :destroy

  has_secure_password
end
