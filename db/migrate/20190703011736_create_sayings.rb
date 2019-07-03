class CreateSayings < ActiveRecord::Migration[5.2]
  def change
    create_table :sayings do |t|
      t.text :body
      t.references :sayer, foreign_key: true

      t.timestamps
    end
  end
end
