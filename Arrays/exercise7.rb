top_five_games = ["Final Fantasy",
                  "Elder Scrolls",
                  "Division",
                  "Zelda",
                  "Doom"]

top_five_games.each_with_index do |game, index|
  puts "#{index + 1}. #{game}"
end