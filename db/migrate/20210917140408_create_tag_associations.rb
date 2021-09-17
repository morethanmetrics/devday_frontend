class CreateTagAssociations < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_associations do |t|
      t.datetime :created_at
      t.belongs_to :tagable, polymorphic: true, null: true
      t.belongs_to :tag, null: true, foreign_key: true
    end
  end
end
