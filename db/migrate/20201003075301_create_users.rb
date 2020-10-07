class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :contact
      t.string :country
      t.date :date_of_birth
      t.string :password

      t.timestamps
    end
  end
end
