class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  LIMIT=50
  default_scope { order(created_at: :desc)}

  def type
  	"post"
  end

  def self.recent
  	self.includes(:user, comments: :user).references(:user)
  end
end