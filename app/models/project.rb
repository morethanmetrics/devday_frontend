class Project < ApplicationRecord

  has_many :tag_associations, as: :tagable, class_name: "TagAssociation", dependent: :destroy
  has_many :tags, through: :tag_associations, class_name: "Tag", dependent: :destroy
end
