class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :category
  belongs_to :condition
  belongs_to :fee_status
  belongs_to :prefecture
  belongs_to :delivery_schedule
  
  belongs_to :user
  has_one_attached :image
end
