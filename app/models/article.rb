class Article < ApplicationRecord
	belongs_to :category
	belongs_to :user

	validates :title, presence: true, length: {minimum: 5, maximum: 70}
	validates :body, presence: true, length: {minimum: 10, maximum: 999}

	# qtd de artigos na pagina
	paginates_per 3

	scope :desc_order, -> { order(created_at: :desc) }
	scope :without_highlights, -> (ids) { where("id NOT IN(#{ids})") if ids.present? }
end
