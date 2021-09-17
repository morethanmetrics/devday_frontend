class Tag < ApplicationRecord

  has_many :tag_associations, class_name: "TagAssociation", dependent: :destroy
  has_many :projects, through: :tag_associations, class_name: "Project", dependent: :destroy
end
