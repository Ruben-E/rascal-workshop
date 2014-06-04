module exercise_3::Parse

import exercise_3::Syntax;
import ParseTree;
import exercise_3::AST;

public Rating parse(loc origin) = implode(#exercise_3::AST::Rating, parse(#start[Rating], origin));
