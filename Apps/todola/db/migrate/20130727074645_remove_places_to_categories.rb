class RemovePlacesToCategories < ActiveRecord::Migration
  def change
    remove_reference :categories, :place, index: true
  end
end
