class Product < ActiveRecord::Base

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

validates :caterer_name, :product_title, :description, :image_url, presence: true 
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :image_url,
		format:  {with: /\.(gif|jpeg|png)\Z/i}

validates :product_title, uniqueness: true
	CUISINE_TYPES = ["American", "Chinese", "Indian", "Italian", "Mexican", "Mediterranean", "Thai"]
	validates :cuisine, inclusion: CUISINE_TYPES

	private
    # ensure that there are no line items referencing this product
def ensure_not_referenced_by_any_line_item 
	if line_items.empty?
return true 
else
errors.add(:base, 'Line Items present')
return false
end
end

end
