@startuml

class Battleship.GUIComponents.MainWindow:Window {
- BattleshipTitleLabel: Label

- Player1NameLabel: Label
- Player2NameLabel: Label

- Player1NameTextBox: TextBox
- Player1NameTextBox1: TextBox

- StartGameButton: Button
- AboutButton: Button
- QuitButton: Button

+ MainWindow()
- StartGameButton_Click(object, RoutedEventArgs)
- AboutButton_Click(object, RoutedEventArgs)
- QuitButton_Click(object, RoutedEventArgs)
}

class Battleship.GUIComponents.AboutWindow:Window {
- GameLabel: Label
- CopyrightLabel: Label
- CloseButton: Button

- CloseButton_Click(object, EventArgs)

+ AboutWindow()

}

class Battleship.GUIComponents.GameWindow:Window {
- Player1DestroyerDeploymentButton: Button
- Player1SubmarineDeploymentButton: Button
- Player1CruiserDeploymentButton: Button
- Player1BattleshipDeploymentButton: Button
- Player1CarrierDeploymentButton: Button

- Player1AttackGrid: AttackGrid
- Player1DefenseGrid: AttackGrid

- Player2DestroyerDeploymentButton: Button
- Player2SubmarineDeploymentButton: Button
- Player2CruiserDeploymentButton: Button
- Player2BattleshipDeploymentButton: Button
- Player2CarrierDeploymentButton: Button

- Player2AttackGrid: AttackGrid
- Player2DefenseGrid: AttackGrid

- NextPlayerTurnButton: Button
- RestGameButton: Button
- EndGameButton: Button

- Player1DestroyerDeploymentButton_Click()
- Player1SubmarineDeploymentButton_Click()
- Player1CruiserDeploymentButton_Click()
- Player1BattleshipDeploymentButton_Click()
- Player1CarrierDeploymentButton_Click()

- Player2DestroyerDeploymentButton_Click()
- Player2SubmarineDeploymentButton_Click()
- Player2CruiserDeploymentButton_Click()
- Player2BattleshipDeploymentButton_Click()
- Player2CarrierDeploymentButton_Click()

+ GameWindow()
+ GameWindow(string)
+ GameWindow(string, int, int)

- NextPlayerTurnButton_Click()
- RestGameButton_Click()
- EndGameButton_Click()
}

class Battleship.GUIComponents.AttackGrid:UserControl {
- ButtonTR1TD1: Button
- ButtonTR1TD2: Button
- ButtonTR1TD3: Button

+ NUMROWS: const ushort
+ NUMROWENTRIES: const ushort

- ButtonTR1TD1_Click(object, RoutedEventArgs)
- ButtonTR1TD2_Click(object, RoutedEventArgs)
- ButtonTR1TD3_Click(object, RoutedEventArgs)

- GenericButtonClickEvent(object, RoutedEventArgs, int, int Button)

+ AttackGrid()
}

class Battleship.GUIComponents.DefenseGrid:UserControl {
- CanvasMain: Canvas

- pixelGridSize: const int
- dragObject: UIElement
- rotateObject: Ellipse
- offset: Point

- carrierShip: Ellipse
- battleshipShip: Ellipse
- cruiserShip: Ellipse
- submarineShip: Ellipse
- destroyerShip: Ellipse

- CanvasMain_OnPreviewMouseMove(object, MouseEventArgs)
- CanvasMain_OnPreviewMouseDown(object, MouseButtonEventArgs)
- CanvasMain_OnPreviewMouseUp(object, MouseButtonEventArgs)
- CanvasMain_OnPreviewMouseRightButtonDown(object, MouseButtonEventArgs)

- RoundCanvasCoords(double[]): double[]

- ConvertCanvasCoordinatesToGridCoordinates(double[]): Coordinate
- ConvertGridCoordinatesToCanvasCoordinates(Coordinate): double[]

+ DefenseGrid()

+ DeployShip(Ellipse, int)

+ DeployCarrierShip()
+ DeployBattleshipShip()
+ DeployCruiserShip()
+ DeploySubmarineShip()
+ DeployDestroyerShip()
}

@enduml
