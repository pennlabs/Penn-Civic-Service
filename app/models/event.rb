class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :url, presence: true
  serialize :cause_type, Hash

  belongs_to :user

  def link
    url.include?('http') ? url : "http://#{url}"
  end
end
