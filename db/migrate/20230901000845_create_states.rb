class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.integer :population
      t.string :governor

      t.timestamps
    end
  end
end
