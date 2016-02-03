class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { minimum: 2 } 
  validates_uniqueness_of :name
  validates :email, presence: true
  validates :password_hash, presence: true
  
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
