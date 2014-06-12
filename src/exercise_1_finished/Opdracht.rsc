module exercise_1_finished::Opdracht

import analyze::ProjectAnalyzer;
import IO;

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

public set[str] run() {
	ast = simpleLoadProject("rascal-android-example-project-intents");
	klassenamen = {};
	visit(ast) {
		case \class(name, _, _, _): {
			klassenamen = klassenamen + name;	
		}
	}
	return klassenamen;
}

