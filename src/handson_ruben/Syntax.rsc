module handson_ruben::Syntax

layout L = [\n\r]*;

lexical PlayerId = [a-zA-Z]*;
lexical OpponentId = [a-zA-Z]*;
lexical MovesId = [0-9]*;
lexical TimeId = [0-9]*;

start syntax Games = games: Game* games;
syntax Game = game: PlayerId player " " OpponentId opponent " " MovesId moves " " TimeId time;