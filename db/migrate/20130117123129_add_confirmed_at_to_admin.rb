class AddConfirmedAtToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :confirmed_at, :time
  end
end
