class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id]) 
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end
	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save
		if @pokemon.health <= 0
			Pokemon.destroy(@pokemon.id)
		end
		redirect_to trainer_path(current_trainer.id)
	end
	def create
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to trainer_path(current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pokemons_new_path
		end
	end
	def new
		@pokemon = Pokemon.new
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end
