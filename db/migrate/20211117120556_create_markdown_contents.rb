class CreateMarkdownContents < ActiveRecord::Migration[6.0]
  def change
    create_table :markdown_contents do |t|
      t.integer  :content_id

      t.timestamps
    end
  end
end
