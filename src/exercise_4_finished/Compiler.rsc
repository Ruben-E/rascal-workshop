module exercise_4_finished::Compiler

import exercise_4_finished::AST;

public str sqlStatementForRating(Rating rating) {
	return "INSERT INTO ratings (lessonNumber, studentNumber, rating) VALUES (\"<rating.lessonNumber>\", \"<rating.studentNumber>\", <rating.rating>);";
}

public str compile(Controller controller) {
	str statements = "";
	for (rating <- controller.ratings) {
		statement = sqlStatementForRating(rating);
		statements = statements + "<statement>\n";
	}
	
	return statements;
}