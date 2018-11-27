class AddPictureToSports < ActiveRecord::Migration[5.2]
  def change
    add_column :sports, :picture, :string
  end
end
