class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :category
  belongs_to :condition
  belongs_to :fee_status
  belongs_to :prefecture
  belongs_to :delivery_schedule
  
  belongs_to :user
  has_one_attached :image
  validates :image, presence: true

  validates :item_name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, only_integer: true }, format: { with: /\A[0-9]+\z/}
  validates :explain, presence: true
  validates :category_id, :condition_id, :fee_status_id, :prefecture_id, :delivery_schedule_id, presence: true, numericality: { other_than: 1 } 
end
