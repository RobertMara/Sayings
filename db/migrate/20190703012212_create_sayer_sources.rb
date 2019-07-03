class CreateSayerSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sayer_sources do |t|
      t.string :additional_source_info
      t.references :sayer, foreign_key: true
      t.references :source, foreign_key: true

      t.timestamps
    end
  end
end
