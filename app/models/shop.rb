class Shop < ApplicationRecord
    belongs_to :category
	default_scope -> { order('created_at DESC') }
	validates :message, presence: true, length: { maximum: 1024 }
	validates :address, presence: true, length: { maximum: 32 }
	validates :category_id, presence: true
	validates :user_name, presence: true, length: { maximum: 32 }
	
	def category_name
		category.try(:name)
	end
	
	def category_name=(category_name)
		self.category = Category.find_by(name: category_name)
	end

end
