class CreateDependents < ActiveRecord::Migration[6.0]
  def change
    create_table :dependents do |t|
      t.string :relationship
      t.string :d_name
      t.string :d_email
      t.string :d_contact
      t.string :d_blood_group
      t.date :d_date_of_birth
      t.string :weight
      t.string :height
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
