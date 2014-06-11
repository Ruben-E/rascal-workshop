module exercise_4::AST

data Controller = controller(list[Rating] ratings);
data Rating = rating(str lessonNumber, str studentNumber, real rating);