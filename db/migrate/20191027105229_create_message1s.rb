class CreateMessage1s < ActiveRecord::Migration[5.2]
  def change
    create_table :message1s do |t|
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
