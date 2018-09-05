class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.float :rate
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
