class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :deadline, presence: false
  validates :time, presence: true
  validates :location, presence: true
  validates :url, presence: true
  serialize :cause_type, Hash

  belongs_to :user
end
