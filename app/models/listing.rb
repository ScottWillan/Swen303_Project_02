class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :name, :price, presence: true
  validates :price, numericality: {greater_than: 0}
  belongs_to :user

  has_many :orders
  has_many :sales, class_name: "Order", foreign_key: "seller_id"
  has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
  def self.search(search)
  where("name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
end
end