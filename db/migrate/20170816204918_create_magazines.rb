class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
