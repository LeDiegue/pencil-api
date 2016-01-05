class Post < ActiveRecord::Base
  validates :user_id, :title, :body, presence: true
end
