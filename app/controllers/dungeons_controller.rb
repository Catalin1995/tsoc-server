class DungeonsController < ApplicationController
  def show
    @dungeon = Dungeon.find(params[:id])
    @skills = Skill.all
  end
end
