module Parse

import Syntax;
import ParseTree;
import AST;

public Rating parse(loc origin) = implode(#AST::Rating, parse(#start[Rating], origin));
