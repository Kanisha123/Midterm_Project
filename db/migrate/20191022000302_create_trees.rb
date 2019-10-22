class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :botanical_name
      t.string :common_name
      t.float :lat
      t.float :long
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
