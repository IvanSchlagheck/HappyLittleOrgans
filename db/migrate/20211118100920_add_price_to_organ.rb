class AddPriceToOrgan < ActiveRecord::Migration[6.0]
  def change
    add_column :organs, :price, :integer
  end
end
