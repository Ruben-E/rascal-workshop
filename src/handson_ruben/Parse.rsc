module handson_ruben::Parse

import handson_ruben::Syntax;
import ParseTree;
import handson_ruben::AST;

public Games parse(loc origin) = implode(#handson_ruben::AST::Games, parse(#start[Games], origin));
