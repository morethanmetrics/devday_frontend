class Tag < ApplicationRecord

  has_many :tag_associations, class_name: "TagAssociation", dependent: :destroy
  has_many :projects, through: :tag_associations, class_name: "Project", dependent: :destroy

  validates :name, uniqueness: { }, length: { maximum: 255 }
  
end
