@startuml

App-->MainWindow

MainWindow-->AboutWindow
MainWindow-->GameWindow

GameWindow-->AttackGrid
GameWindow-->DefenseGrid

GameWindow-->Game

Game-->Player

Player-->AttackBoard
Player-->DefenseBoard

DefenseBoard-->Ship

AttackBoard-->AttackCoordinate

Ship-->Coordinate

@enduml
