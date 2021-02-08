class CreatePageRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :page_ranks do |t|
      t.integer :rank
      t.references :link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
