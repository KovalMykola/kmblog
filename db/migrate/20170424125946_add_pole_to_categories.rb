class AddPoleToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :pole, :string
  end
end
