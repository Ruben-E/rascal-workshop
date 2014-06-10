module exercise_4::AST

data Ratings = ratings(list[Rating] ratings);
data Rating = rating(str lessonNumber, str studentNumber, real rating);