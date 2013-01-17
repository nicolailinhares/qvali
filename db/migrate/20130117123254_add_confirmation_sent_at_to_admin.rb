class AddConfirmationSentAtToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :confirmation_sent_at, :time
  end
end
