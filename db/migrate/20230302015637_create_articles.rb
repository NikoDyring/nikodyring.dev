class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :headline
      t.string :text
      t.integer :category
      t.integer :status

      t.timestamps
    end
  end
end
