class CreateTrumps < ActiveRecord::Migration[5.0]
  def change
    create_table :trumps do |t|
      t.text :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
