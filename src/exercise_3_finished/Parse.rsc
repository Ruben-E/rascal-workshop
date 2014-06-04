module exercise_3_finished::Parse

import exercise_3_finished::Syntax;
import ParseTree;
import exercise_3_finished::AST;

public Rating parse(loc origin) = implode(#exercise_3_finished::AST::Rating, parse(#start[Rating], origin));
