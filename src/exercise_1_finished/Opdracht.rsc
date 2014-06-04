module exercise_1_finished::Opdracht
import analyze::ProjectAnalyzer;

/*
	Uitvoeren van het bestand
	Rechtermuisknop op Opdracht.rsc en kies voor 
	-> 'Import module in current console'
	Vervolgens kun je de methode 'analyze()' uitvoeren
*/

public set[str] analyze() {
	ast = simpleLoadProject("rascal-android-example-project-intents");
	klassenamen = {};
	visit(ast) {
		case \class(name, _, _, _): {
			klassenamen = klassenamen + name;	
		}
	}
	return klassenamen;
}

