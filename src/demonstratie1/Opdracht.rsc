module demonstratie1::Opdracht
import analyze::ProjectAnalyzer;
import Declaration;
import lang::java::m3::AST;
import lang::java::jdt::m3::Core;
import IO;
import Type;

public void run() {
	ast = simpleLoadProject("rascal-android-example-project-intents");
	iprintln(ast);
}

