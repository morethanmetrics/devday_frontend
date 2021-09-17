class TagAssociation < ApplicationRecord

  belongs_to :tagable, polymorphic: true, optional: true
  belongs_to :tag, optional: true
end
