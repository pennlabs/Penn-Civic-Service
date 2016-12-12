class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :url, presence: true
  serialize :cause_type, Hash

  belongs_to :user

  def url
    event.url.include?('http') ? event.url : "http://#{event.url}"
  end
end
