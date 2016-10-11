class GameValidator < ActiveModel::Validator
  def validate(game)
    if game.players.length >= 4
      # game.full = true
      game.errors[:game_full] << 'Game is full!'
    end
  end
end
