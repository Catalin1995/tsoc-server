class DungeonHashesController < ApplicationController
  def index
    @dungeon_hash = DungeonHash.where(:dungeon_id => params[:dungeon_id], :user_id => params[:student_id]).first
    if @dungeon_hash == nil
      if Dungeon.exists?(params[:dungeon_id])
        if User.exists?(params[:student_id])
          @dungeon_hash = DungeonHash.create!(:dungeon_id => params[:dungeon_id], :user_id => params[:student_id], :dungeon_hash => '_')
        end
      end
    end
  end
end
