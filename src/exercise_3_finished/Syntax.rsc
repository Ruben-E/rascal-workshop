module exercise_3_finished::Syntax

layout L = [\t\n\ \r\f]*;

lexical LessonNumberId = [a-zA-Z0-9]*;
lexical StudentNumberId = [a-zA-Z0-9]*;
lexical RatingId = ("10"|[0-9]);

start syntax Rating = rating: LessonNumberId lessonNumber StudentNumberId studentNumber RatingId rating;
