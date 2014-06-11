module exercise_4::Opdracht

import IO;
import exercise_4::AST;
import exercise_4::Parse;
import exercise_4::Compiler;

public void run() {
	Controller controller = parse(|project://rascal-workshop/src/exercise_4/input/ratings.txt|);
	sqlStatements = compile(controller);

	// Schrijf hier de statements weg naar het bestand. 
}