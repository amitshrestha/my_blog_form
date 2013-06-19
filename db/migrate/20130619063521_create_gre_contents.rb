class CreateGreContents < ActiveRecord::Migration
  def change
    create_table :gre_contents do |t|
      t.string :word
      t.string :meaning
      t.text :usage1
      t.text :usage2

      t.timestamps
    end
  end
end
