class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating, inclusion: { in: 0..5 }
      t.references :restaurant, foreign_key: true
      t.timestamps
    end
  end
end
