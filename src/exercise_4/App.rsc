module exercise_4::App

import IO;
import exercise_4::Parse;

public void run() {
	rating = parse(|project://rascal-workshop/src/exercise_4/input/rating.txt|);
	iprintln(rating);
}