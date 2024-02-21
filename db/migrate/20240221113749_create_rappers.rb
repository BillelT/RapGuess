class CreateRappers < ActiveRecord::Migration[7.1]
  def change
    create_table :rappers do |t|
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
