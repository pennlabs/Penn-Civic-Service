class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  serialize :tags, Hash

  belongs_to :user
end
