class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :email
      #t.text :image_url
      t.timestamps null: false
    end
  end
end
