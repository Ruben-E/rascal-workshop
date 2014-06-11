module handson_ruben::App

import IO;
import handson_ruben::AST;
import handson_ruben::Parse;

public void run() {
	Games games = parse(|project://rascal-workshop/src/handson_ruben/input/games.txt|);
	
	opponents = ["Quido", "Eric"];
	
	for (opponent <- opponents) {
		visit (games) {
			case \game(player, opponent:/<opponent>/, score, time): {
				iprintln("<player> - <opponent>: <score> in <time> seconds.");
			}
		}
	}
}