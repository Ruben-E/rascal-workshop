module demonstratie1_finished::Opdracht
import analyze::ProjectAnalyzer;
import Declaration;
import lang::java::m3::AST;
import lang::java::jdt::m3::Core;
import IO;
import Type;

public void extractListeners(ast) {
	visit(ast) {
		case \class(classname,_,implements,_): {
			visit(implements) {
				case simpleType(simpleName(/<interface:GamePlayListener>/i)): {
					iprintln(classname + " - " + interface);
				}
			}
			
		}
	}
}

public void run() {
	asts = simpleLoadProject("NPuzzle");
	for(ast <- asts) {
		extractListeners(ast);
	}

}

