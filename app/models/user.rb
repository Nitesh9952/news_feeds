class User < ApplicationRecord
	has_many :posts
  has_many :comments

  def type
  	"user"
  end
end
