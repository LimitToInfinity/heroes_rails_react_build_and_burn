class HerosController < ApplicationController

  def index
    @heros = Hero.all
    render json: @heros, include: [:weapon, :powers]
  end

  def create
    @hero = Hero.create hero_params
    render json: @hero, include: [:weapon, :powers]
  end

  private

  def hero_params
    params.require(:hero).permit(:name, :weapon_id, power_ids: [])
  end

end
