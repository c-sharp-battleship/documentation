@startuml

class App

App-->MainWindow

MainWindow-->AboutWindow
MainWindow-->GameWindow

GameWindow-->AttackGrid
GameWindow-->DefenseGrid

@enduml
