class AddReferenceToFeedsAndTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :feeds, :tags
  end
end
