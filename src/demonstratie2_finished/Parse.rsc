module demonstratie2_finished::Parse

import demonstratie2_finished::Syntax;
import ParseTree;
import demonstratie2_finished::AST;

public Games parse(loc origin) = implode(#demonstratie2_finished::AST::Games, parse(#start[Games], origin));
