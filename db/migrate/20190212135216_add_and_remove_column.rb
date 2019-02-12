class AddAndRemoveColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :stripe_customer_id, :string
    remove_column :users, :email, :string
  end
end
