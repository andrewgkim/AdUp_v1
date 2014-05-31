class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :ad_url
      t.float :cpv
      t.string :company

      t.timestamps

    end
  end
end
