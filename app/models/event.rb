class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :org_email, presence: true
  validates :description, presence: true
  serialise :tags, Hash
end
