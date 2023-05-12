require_relative './models/game'

puts 'Zero case: 0'

game = Game.new

game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)
game.record_roll(0)

score = game.total_score

score == 0 ? puts("Pass #{score}") : puts("FAIL #{score}")

puts 'Simple case: 30'

game = Game.new

game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)
game.record_roll(1)
game.record_roll(2)

score = game.total_score

score == 30 ? puts("Pass #{score}") : puts("FAIL #{score}")

puts 'Perfect game: 300'

game = Game.new

game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)
game.record_roll(10)

score = game.total_score

score == 300 ? puts("Pass #{score}") : puts("FAIL #{score}")

puts 'Some strikes, no spares: 115'

game = Game.new

game.record_roll(5)
game.record_roll(4)
game.record_roll(10)
game.record_roll(3)
game.record_roll(3)
game.record_roll(10)
game.record_roll(10)
game.record_roll(4)
game.record_roll(1)
game.record_roll(8)
game.record_roll(1)
game.record_roll(2)
game.record_roll(2)
game.record_roll(6)
game.record_roll(2)
game.record_roll(10)
game.record_roll(3)
game.record_roll(6)

score = game.total_score

score == 115 ? puts("Pass #{score}") : puts("FAIL #{score}")

puts 'Some spares, no strikes: 111'

game = Game.new

game.record_roll(5)
game.record_roll(4)
game.record_roll(5)
game.record_roll(5)
game.record_roll(3)
game.record_roll(2)
game.record_roll(3)
game.record_roll(7)
game.record_roll(8)
game.record_roll(1)
game.record_roll(8)
game.record_roll(1)
game.record_roll(6)
game.record_roll(4)
game.record_roll(7)
game.record_roll(1)
game.record_roll(8)
game.record_roll(1)
game.record_roll(6)
game.record_roll(4)
game.record_roll(4)

score = game.total_score

score == 111 ? puts("Pass #{score}") : puts("FAIL #{score}")

puts 'Some spares, some strikes: 128'

game = Game.new

game.record_roll(5)
game.record_roll(4)
game.record_roll(10)
game.record_roll(3)
game.record_roll(2)
game.record_roll(3)
game.record_roll(7)
game.record_roll(8)
game.record_roll(1)
game.record_roll(10)
game.record_roll(6)
game.record_roll(4)
game.record_roll(7)
game.record_roll(1)
game.record_roll(8)
game.record_roll(1)
game.record_roll(10)
game.record_roll(4)
game.record_roll(4)

score = game.total_score

score == 128 ? puts("Pass #{score}") : puts("FAIL #{score}")

puts 'Adding too many scores'

game.record_roll(1)
game.record_roll(2)
game.record_roll(2)

score = game.total_score

score == 128 ? puts("Pass #{score}") : puts("FAIL #{score}")
