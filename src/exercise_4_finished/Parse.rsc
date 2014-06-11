module exercise_4_finished::Parse

import exercise_4_finished::Syntax;
import ParseTree;
import exercise_4_finished::AST;

public Controller parse(loc origin) = implode(#exercise_4_finished::AST::Controller, parse(#start[Controller], origin));
