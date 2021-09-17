class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :name, limit: 255
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
