class CreateDemands < ActiveRecord::Migration[5.2]
  def change
    create_table :demands do |t|
      t.string :description, null: false
      t.boolean :met, null: false, default: false

      t.timestamps
    end
  end
end
