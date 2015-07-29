class Author < ActiveRecord::Base
  has_many :commits
  validates :email, :name, presence: true
end
