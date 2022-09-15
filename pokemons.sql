CREATE TABLE `pokemons` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `pokemon_name` varchar(255),
  `type_1` int,
  `type_2` int,
  `total` int,
  `hp` int,
  `attack` int,
  `defense` int,
  `sp_attack` int,
  `sp_defense` int,
  `speed` int,
  `generation` int,
  `legendary` boolean
  FOREIGN KEY(generation) REFERENCES generations(id),
  FOREIGN KEY(type_1) REFERENCES types(id)
  FOREIGN KEY(type_2) REFERENCES types(id)
);

CREATE TABLE `generations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `generation` int,
);

CREATE TABLE `types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `type_name` varchar(255),
);
