class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.integer :lesson_id
      t.integer :quiz_id
      t.integer :phase_id

      t.timestamps
    end
  end
end
