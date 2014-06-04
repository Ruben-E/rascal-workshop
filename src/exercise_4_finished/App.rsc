module exercise_4_finished::App

import IO;
import exercise_4_finished::Parse;

public void run() {
	rating = parse(|project://rascal-workshop/src/exercise_4_finished/input/rating.txt|);
	iprintln(rating);
}