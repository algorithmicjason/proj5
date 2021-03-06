class CreateFolders < ActiveRecord::Migration[6.1]
  def change
    create_table :folders do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.string :color, :default => "Blue"

      t.timestamps
    end
  end
end
