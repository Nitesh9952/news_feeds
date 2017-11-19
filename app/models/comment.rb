class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def type
  	"comment"
  end
end