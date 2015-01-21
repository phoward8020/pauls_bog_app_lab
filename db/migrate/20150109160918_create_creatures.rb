class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name_common
      t.string :name_latin
      t.string :image_url
      t.string :population_status

      t.timestamps null: false
    end
  end
end
