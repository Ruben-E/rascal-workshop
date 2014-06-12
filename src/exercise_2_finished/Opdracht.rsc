module exercise_2_finished::Opdracht

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

public set[node] run() {
	ast = simpleLoadProject("rascal-android-example-project-intents");
	variables = {};
	visit(ast) {
		case \class(classname, _, _,body):
		{	
			visit(body) {
				case method(_,methodname,_,_,impl) :
				{
					visit(impl) {
						case variable(variablename,_,_): {
							variables = variables + "variable"(variablename, methodname, classname);						
						}
					}
	
				}
			}
		}
	}
	return variables;
}

