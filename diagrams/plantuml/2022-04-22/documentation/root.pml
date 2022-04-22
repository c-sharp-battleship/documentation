@startuml

class Battleship.App:Application
{
+ App()
}

class Battleship.Logger
{
+ Information()
+ ConsoleInformation()
}

class Battleship.StatusCodes()
{
+ enum ApplicationStatus
+ enum AttackStatus
}

enum Battleship.StatusCodes.AttackStatus {
NOT_ATTACKED
ATTACKED_NOT_HIT
ATTACKED_HIT
}

enum Battleship.StatusCodes.ApplicationStatus {
GAME_NOT_STARTED
GAME_STARTED
PLAYER_1_TURN
PLAYER_2_TURN
GAME_ENDED
}

@enduml
