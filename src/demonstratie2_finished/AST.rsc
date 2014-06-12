module demonstratie2_finished::AST

data Games = games(list[Game] games);
data Game = game(str player, str opponent, int moves, int time);