module demonstratie2::App

import IO;
import demonstratie2::AST;
import demonstratie2::Parse;

public void run() {
	Games games = parse(|project://rascal-workshop/src/demonstratie2/input/games.txt|);
	iprintln(games);
}