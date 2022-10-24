class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :chat_id
      t.integer :assessment_id
      t.integer :phase_id
      t.integer :educator_id

      t.timestamps
    end
  end
end
