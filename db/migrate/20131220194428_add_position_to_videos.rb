class AddPositionToVideos < ActiveRecord::Migration
  def self.up
    add_column :videos, :position, :integer

    Video.reset_column_information

    videos = Video.all

    videos.each_with_index do |b, i|
      b.position = i+1
      b.save!
    end
  end

  def self.down
    remove_column :videos, :position
  end
end
