class CreateTwcls < ActiveRecord::Migration[5.1]
  def change
    create_table :twcls do |t|
      t.text :content
    end
  end
end
