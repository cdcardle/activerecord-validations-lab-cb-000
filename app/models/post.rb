class Post < ActiveRecord::Base
  validates :title, presence: true, :allow_blank => true, clickbait: true
  validates :content, length: {minimum: 50}
  validates :summary, length: {maximum: 50}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "%{value} is not Fiction or Non-Fiction."}
end
