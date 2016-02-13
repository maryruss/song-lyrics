class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.string :author
      t.string :song_title
      t.string :song_lyric

      t.timestamps null: false
    end
  end
end
