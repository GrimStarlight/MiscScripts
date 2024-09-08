def static_safari_encounter(pokemon_id, level)
  pbSafariBattle(pokemon_id, level)
  
  if $PokemonTemp.safariState == 1 
    pbMessage(_INTL("Gotcha! {1} was caught!",PBSpecies.getName(pokemon_id)))
    pbAddPokemon(pokemon_id, level)

    pbMessage(_INTL("Oh no! The {1} fled!",PBSpecies.getName(pokemon_id)))
  end
end

static_safari_encounter(25, 15)
