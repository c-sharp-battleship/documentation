@startuml

class Battleship.CoreComponents.Game
{
+ GameStatus: StatusCodes.ApplicationStatus
+ ID: string
+ Player1: Player
+ Player2: Player

+ Game()
+ StartGame(string, string)
}

class Battleship.CoreComponents.Player
{
+ ID: string
+ Username: string

+ PlayerAttackBoard: AttackBoard
+ PlayerDefenseBoard: DefenseBoard

+ Player()
}

class Battleship.CoreComponents.AttackBoard
{
+ HitCoords: List<AttackCoordinate>
+ MissCoords: List<AttackCoordinate>

+ AttackBoard()
}

class Battleship.CoreComponents.DefenseBoard
{
+ DestroyerShip: Ship
+ SubmarineShip: Ship
+ CruiserShip: Ship
+ BattleshipShip: Ship
+ CarrierShip: Ship

+ DefenseBoard()
}

class Battleship.CoreComponents.Coordinate
{
+ XCoordinate: short
+ YCoordinate: short

+ Coordinate()
+ Coordinate(short, short)
}

class Battleship.CoreComponents.AttackCoordinate:Coordinate
{
+ CoordinateStatus: StatusCodes.AttackStatus

+ AttackCoordinate()
+ AttackCoordinate(StatusCodes.AttackStatus)
+ AttackCoordinate(StatusCodes.AttackStatus, short, short)

+ GetAttackStatus(): StatusCodes.AttackStatus
}

@enduml
