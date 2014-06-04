module analyze::ProjectAnalyzer

import lang::java::m3::AST;
import lang::java::jdt::m3::Core;
import analysis::m3::Core;
import IO;
import String;

anno rel[str simpleName, loc qualifiedName]  M3@names;
anno rel[loc definition, loc comments] M3@documentation;

public set[Declaration] simpleLoadProject(str project) {
	return loadProject(toLocation("project://"+project+"/"));
}

public set[Declaration] loadProject(loc location) {
	return createAstsFromDirectory(location, true);
}

public Declaration loadFile(loc location) {
	return createAstFromFile(location, true);
}

public M3 loadM3File(loc location) {
	return createM3FromEclipseProject(location);
}
