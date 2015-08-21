class DungeonHashesController < ApplicationController
  def index
    @dungeon_hash = DungeonHash.where(:dungeon_id => params[:dungeon_id], :user_id => params[:student_id]).first
  end
end
