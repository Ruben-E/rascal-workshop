module exercise_3::Syntax

layout L = [\t\n\ \r\f]*;

lexical LessonNumberId = [a-zA-Z0-9]*;
lexical StudentNumberId = [a-zA-Z0-9]*;
lexical RatingId = ("10"|[0-9]);

// Hieronder kun je de syntax definieren, maak hierbij gebruik van de bovenstaande lexicals en het uitgedeelde cheatsheet