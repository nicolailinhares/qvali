class AddConfirmationToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :confirmation_token, :string
    add_column :admins, :unconfirmed_email, :string
    remove_column :admins, :confirmed_at
    remove_column :admins, :confirmation_sent_at
    add_column :admins, :confirmed_at, :datetime
    add_column :admins, :confirmation_sent_at, :datetime
  end
end
