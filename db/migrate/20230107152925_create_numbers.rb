class CreateNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :numbers do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :email
      
      t.timestamps
    end
  end
end
