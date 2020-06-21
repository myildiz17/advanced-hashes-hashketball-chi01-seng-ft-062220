def all_players
  game_hash[:home][:players].merge(game_hash[:away][:players])
end

def get_team(team)
  case team
  when game_hash[:home][:team_name]
    game_hash[:home]
  when game_hash[:away][:team_name]
    game_hash[:away]
  end
end

def player_numbers(team)
  get_team(team)[:players].map do |player|
    player[:number]
  end
end

def num_points_scored(player)
  all_players[:player][:score]

end
