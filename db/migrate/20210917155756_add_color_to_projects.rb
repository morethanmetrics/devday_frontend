class AddColorToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :color, :string, limit: 255
  end
end
