class CreateSchoolOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :school_owners do |t|

      t.timestamps
    end
  end
end
