module exercise_4_finished::Opdracht

import IO;
import exercise_4_finished::AST;
import exercise_4_finished::Parse;
import exercise_4_finished::Compiler;

public void run() {
	Controller controller = parse(|project://rascal-workshop/src/exercise_4_finished/input/ratings.txt|);
	sqlStatements = compile(controller);
	
	writeFile(|project://rascal-workshop/src/exercise_4_finished/output/ratings.txt|, sqlStatements);
}