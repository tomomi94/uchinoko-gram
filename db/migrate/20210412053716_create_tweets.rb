class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text :text,           null: false
      t.integer :pet_type_id, null: false
      t.integer :age,         null: false
      t.integer :gender_id
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
