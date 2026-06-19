class AddSlugToAudiobooks < ActiveRecord::Migration[8.0]
  def change
    add_column :audiobooks, :slug, :string
  end
end
