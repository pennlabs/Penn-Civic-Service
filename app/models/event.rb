class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :org_email, presence: true
  validates :description, presence: true
<<<<<<< Updated upstream
  serialise :tags, Hash
=======
  validates :date, presence: true
  validates :deadline, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :url, presence: true
  serialize :tags, Hash

  belongs_to :user
>>>>>>> Stashed changes
end
