class Article < ActiveRecord::Base

validates :title, uniqueness: true, presence: true
validates :author, presence: true
validates :published_at, presence: true
validates :content, presence: true
end
