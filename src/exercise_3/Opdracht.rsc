module exercise_3::Opdracht

import IO;
import exercise_3::Parse;

public void run() {
	rating = parse(|project://rascal-workshop/src/exercise_3/input/rating.txt|);
	iprintln(rating);
}