module exercise_4_finished::Opdracht

import IO;
import exercise_4_finished::AST;
import exercise_4_finished::Parse;
import exercise_4_finished::Compiler;

/*
	Uitvoeren van het bestand
	Rechtermuisknop op Opdracht.rsc en kies voor 'Run As -> Rascal Application'
	Vervolgens kun je de methode 'run()' uitvoeren
*/

/*
	Hints:
	- Gebruik de cheat sheets (o.a. op http://bit.ly/1s7Et9f);
	- Neem een kijkje op http://tutor.rascal-mpl.org/Rascal/Rascal.html;
	- Vraag ons in de klas;
*/

public void run() {
	Controller controller = parse(|project://rascal-workshop/src/exercise_4_finished/input/ratings.txt|);
	sqlStatements = compile(controller);
	
	writeFile(|project://rascal-workshop/src/exercise_4_finished/output/ratings.txt|, sqlStatements);
}