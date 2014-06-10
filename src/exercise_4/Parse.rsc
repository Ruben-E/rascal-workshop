module exercise_4::Parse

import exercise_4::Syntax;
import ParseTree;
import exercise_4::AST;

public Ratings parse(loc origin) = implode(#exercise_4::AST::Ratings, parse(#start[Ratings], origin));
