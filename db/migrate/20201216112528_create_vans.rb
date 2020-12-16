class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.string :title
      t.string :description
      t.integer :length
      t.integer :max_width
      t.integer :min_width
      t.integer :height

      t.timestamps
    end
  end
end
