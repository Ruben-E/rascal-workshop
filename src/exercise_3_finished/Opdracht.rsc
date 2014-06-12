module exercise_3_finished::Opdracht

import IO;
import exercise_3_finished::Parse;

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
	rating = parse(|project://rascal-workshop/src/exercise_3_finished/input/rating.txt|);
	iprintln(rating);
}