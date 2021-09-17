class Tag < ApplicationRecord

  has_many :tag_associations, class_name: "TagAssociation", dependent: :destroy

  validates :name, uniqueness: true, length: { maximum: 255 }
  
end
