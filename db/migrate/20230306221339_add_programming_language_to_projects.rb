class AddProgrammingLanguageToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :programming_language, :integer
  end
end
