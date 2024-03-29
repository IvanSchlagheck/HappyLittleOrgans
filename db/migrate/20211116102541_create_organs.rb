class CreateOrgans < ActiveRecord::Migration[6.0]
  def change
    create_table :organs do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
