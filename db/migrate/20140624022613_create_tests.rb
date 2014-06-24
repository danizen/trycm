class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.text :xslt
      t.text :output

      t.timestamps
    end
  end
end
