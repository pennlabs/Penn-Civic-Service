class User < ActiveRecord::Base
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :username, length: { minimum: 2 } 
  validates_uniqueness_of :username
  validates :email, presence: true
  validates :password_hash, presence: true
  validates :org_name, presence: true
  validates :org_url, presence: true
  validates :org_phone, presence: true
  validates :org_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  
  has_many :events, dependent: :destroy

  include BCrypt
  def password
    @password ||= Password.new(password_hash) unless password_hash.nil?
  end
  def password=(new_password)
    unless new_password == ''
      @password = Password.create(new_password)
      self.password_hash = @password
    end
  end
end
