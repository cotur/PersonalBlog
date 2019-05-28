class AddSocialToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :social, :string
  end
end
