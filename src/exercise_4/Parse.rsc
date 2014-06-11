module exercise_4::Parse

import exercise_4::Syntax;
import ParseTree;
import exercise_4::AST;

public Controller parse(loc origin) = implode(#exercise_4::AST::Controller, parse(#start[Controller], origin));
