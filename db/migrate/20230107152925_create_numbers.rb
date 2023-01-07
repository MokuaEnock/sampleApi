class CreateNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :numbers do |t|
      t.belongs_to :user, foreign_key: true
      t.string :first
      t.string :second

      t.timestamps
    end
  end
end
