class CreateNutritionalInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritional_informations do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :serving_size
      t.integer :calories
      
      t.timestamps
    end
  end
end
