class AddKeywordsToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :keywords, :string
  end
end
