module exercise_2::Opdracht
import analyze::ProjectAnalyzer;
import IO;

/*
	Uitvoeren van het bestand
	Rechtermuisknop op Opdracht.rsc en kies voor 
	-> 'Import module in current console'
	Vervolgens kun je de methode 'analyze()' uitvoeren
*/

public void analyze() {
	ast = simpleLoadProject("rascal-android-example-project-intents");
	iprintln(ast);
}

