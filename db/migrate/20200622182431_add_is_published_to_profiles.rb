class AddIsPublishedToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :is_published, :boolean, default: false
  end
end
