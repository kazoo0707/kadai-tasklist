class AddUserToTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
      
    add_reference :tasks, :user, foreign_key: true
    end
  end
end
