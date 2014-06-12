module exercise_4::Opdracht

import IO;
import exercise_4::AST;
import exercise_4::Parse;
import exercise_4::Compiler;

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
	Controller controller = parse(|project://rascal-workshop/src/exercise_4/input/ratings.txt|);
	sqlStatements = compile(controller);

	// Schrijf hier de statements weg naar het bestand. 
}