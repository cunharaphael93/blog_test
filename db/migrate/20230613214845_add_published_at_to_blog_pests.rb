class AddPublishedAtToBlogPests < ActiveRecord::Migration[7.0]
  def change
    add_column :blog_pests, :published_at, :datetime
  end
end
