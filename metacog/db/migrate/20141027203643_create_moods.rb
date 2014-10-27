class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.integer :rating
      t.string :reason
      t.text :narrative
      t.datetime :date

      t.timestamps
    end
  end
end
