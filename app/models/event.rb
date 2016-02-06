class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :deadline, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :url, presence: true
  serialize :tags, Hash

  belongs_to :user
end
