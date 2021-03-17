class RemoveColumnArtistIdFromInstruments < ActiveRecord::Migration[5.2]
  def change
    remove_column :instruments, :artist_id
  end
end
