module exercise_4::Parse

import exercise_4::Syntax;
import ParseTree;
import exercise_4::AST;

public Rating parse(loc origin) = implode(#exercise_4::AST::Rating, parse(#start[Rating], origin));
