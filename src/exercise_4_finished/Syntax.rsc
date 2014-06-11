module exercise_4_finished::Syntax

layout L = [\t\n\ \r\f]*;

lexical LessonNumberId = [a-zA-Z0-9]*;
lexical StudentNumberId = [a-zA-Z0-9]*;
lexical RatingId = (("10"|[0-9]) | (("10"("."|",")"0")|([0-9]("."|",")[0-9])));

start syntax Controller = controller: Ratings ratings;
syntax Ratings = Rating*;
syntax Rating = rating: LessonNumberId lessonNumber " " StudentNumberId studentNumber " " RatingId rating;