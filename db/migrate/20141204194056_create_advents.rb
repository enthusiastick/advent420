class CreateAdvents < ActiveRecord::Migration
  def change
    create_table :advents do |t|
      t.integer :date, null: false, unique: true
      t.text :description
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
