module demonstratie2_finished::App

import IO;
import demonstratie2_finished::AST;
import demonstratie2_finished::Parse;

public void run() {
	Games games = parse(|project://rascal-workshop/src/demonstratie2_finished/input/games.txt|);
	
	opponents = ["Quido", "Eric"];
	
	for (opponent <- opponents) {
		visit(games) {
			case \game(player, /<opponent>/, score, time): {
				iprintln("<player> - <opponent>: <score> in <time> minutes.");
			}
		}
	}
}