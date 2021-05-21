class HerosController < ApplicationController

  def index
    @heros = Hero.all
    render json: @heros, include: [:weapon, :powers]
  end

  def create
    @hero = Hero.create(
      name: params[:name],
      weapon_id: params[:weapon_id]
    )

    params[:powers].each do |power_id|
      HeroPower.create hero: @hero, power_id: power_id
    end

    render json: @hero, include: [:weapon, :powers]
  end

end
