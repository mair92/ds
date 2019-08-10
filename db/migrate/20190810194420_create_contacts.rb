class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :address
      t.string :phone_number
      t.string :email
      t.string :vk
      t.string :inst
      t.string :twitter
      t.string :telegram
    end
  end
end
