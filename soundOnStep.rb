class Game_Player < Game_Character
  alias original_update update
  
  def update
    original_update
    if $game_map.terrain_tag($game_player.x, $game_player.y) == 2
      pbSEPlay("SandStep", 80, 100)
    end
  end
end
