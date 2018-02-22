class CountryController < ApplicationController
  def all_states
  	@states = State.reorder('name DESC')
  	
  end

  def top_pop
  	@states = State.reorder('population DESC').limit(5)
  end
end

 