@startuml

class Game

Game-->Player

Player-->AttackBoard
Player-->DefenseBoard

DefenseBoard-->Ship

AttackBoard-->AttackCoordinate

Ship-->Coordinate

@enduml
