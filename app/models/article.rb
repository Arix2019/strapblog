class Article < ApplicationRecord
	validates :title, presence: true, length: {minimum: 5, maximum: 70}
	validates :body, presence: true, length: {minimum: 10, maximum: 999}
end
