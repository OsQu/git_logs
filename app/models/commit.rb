class Commit < ActiveRecord::Base
  belongs_to :author
  validates :sha, :message, :commit_date, :author, presence: true
end
