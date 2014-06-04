module exercise_4_finished::Parse

import exercise_4_finished::Syntax;
import ParseTree;
import exercise_4_finished::AST;

public Rating parse(loc origin) = implode(#exercise_4_finished::AST::Rating, parse(#start[Rating], origin));
