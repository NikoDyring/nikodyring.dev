class AddCategoryToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :category, :integer
  end
end
