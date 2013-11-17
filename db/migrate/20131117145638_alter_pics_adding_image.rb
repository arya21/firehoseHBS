class AlterPicsAddingImage < ActiveRecord::Migration
  def change
  
  # from activerecords migration link, add_column image to table "pics"

  add_column :pics, :image, :string


  end
end
