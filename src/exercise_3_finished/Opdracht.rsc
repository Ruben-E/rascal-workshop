module exercise_3_finished::Opdracht

import IO;
import exercise_3_finished::Parse;

public void run() {
	rating = parse(|project://rascal-workshop/src/exercise_3_finished/input/rating.txt|);
	iprintln(rating);
}