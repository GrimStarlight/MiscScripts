class Game_Player < Game_Character
  alias original_update update

  def initialize(*args)
    super(*args)
    @last_x = self.x
    @last_y = self.y
  end

  def update
    original_update
    if (self.x != @last_x || self.y != @last_y)
      if $game_map.terrain_tag($game_player.x, $game_player.y) == 2
        pbSEPlay("SandStep", 80, 100)
      end
      @last_x = self.x
      @last_y = self.y
    end
  end
end
