module demonstratie2::Parse

import demonstratie2::Syntax;
import ParseTree;
import demonstratie2::AST;

public Games parse(loc origin) = implode(#demonstratie2::AST::Games, parse(#start[Games], origin));
