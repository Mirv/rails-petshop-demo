class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.date :last_checkin, null: false
      t.string :breed, null: false
      t.string :gender, null: false
      t.string :name, null: false
      t.string :owner, null: false
      t.string :owner_phone, null: false
      t.boolean :castrated, default: false
      t.datetime :birthday, null: false

      t.timestamps null: false
    end
  end
end
