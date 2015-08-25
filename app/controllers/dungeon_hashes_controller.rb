class DungeonHashesController < ApplicationController
  def index
    @dungeon_hash = DungeonHash.where(dungeon_id: params[:dungeon_id], user_id: params[:student_id]).first
    if @dungeon_hash.nil?
      if Dungeon.exists?(params[:dungeon_id])
        if User.exists?(params[:student_id])
          @dungeon_hash = DungeonHash.create!(dungeon_id: params[:dungeon_id], user_id: params[:student_id], dungeon_hash: '_')
        else
          render_response('')
        end
      else
        render_response('')
      end
    end
  end

  def update
    @dungeon_hash = DungeonHash.where(dungeon_id: params[:dungeon_id], user_id: params[:student_id]).first
    @dungeon_hash.update_attributes!(:dungeon_hash => params[:hash])
  end
end
