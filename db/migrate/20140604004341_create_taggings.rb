class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :category_id
      t.integer :ad_id

      t.timestamps

    end
  end
end
