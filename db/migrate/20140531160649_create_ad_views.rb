class CreateAdViews < ActiveRecord::Migration
  def change
    create_table :ad_views do |t|
      t.integer :ad_id
      t.integer :user_id

      t.timestamps

    end
  end
end
