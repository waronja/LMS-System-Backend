class CreateEducators < ActiveRecord::Migration[7.0]
  def change
    create_table :educators do |t|
      
        t.string :first_name
        t.string :last_name
        t.string :email
        t.string :password_digest
        t.integer :school_id
        # t.boolean :isadmin, default: true
        # t.integer :school_id
        t.boolean :isprof,default:true

      t.timestamps
    end
  end
end
