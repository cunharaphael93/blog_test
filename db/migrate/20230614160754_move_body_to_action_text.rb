class MoveBodyToActionText < ActiveRecord::Migration[7.0]
  def change
    BlogPest.all.find_each do |blog_pest|
      blog_pest.update(content: blog_pest.body)
    end
    remove_column :blog_pests, :body
  end
end
