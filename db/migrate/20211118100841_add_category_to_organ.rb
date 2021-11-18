class AddCategoryToOrgan < ActiveRecord::Migration[6.0]
  def change
    add_column :organs, :category, :string
  end
end
