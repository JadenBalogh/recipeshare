class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :reviewer
      t.integer :rating
      t.text :body

      t.timestamps
    end
  end
end
