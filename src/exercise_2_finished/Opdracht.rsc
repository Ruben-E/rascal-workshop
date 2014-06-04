module exercise_2_finished::Opdracht
import analyze::ProjectAnalyzer;
import IO;

/*
	Uitvoeren van het bestand
	Rechtermuisknop op Opdracht.rsc en kies voor 
	-> 'Import module in current console'
	Vervolgens kun je de methode 'analyze()' uitvoeren
*/

public set[node] analyze() {
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

