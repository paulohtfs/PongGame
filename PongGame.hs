import Graphics.UI.GLUT
import Binding

main :: IO ()
main = do
	(_progName, _args) <- getArgsAndInitialize
	_window <- createWindow "OpenGL"
	displayCallback $= display
	reshapeCallback $= Just reshape
	keyboardMouseCallback $= Just keyboardMouse
	mainLoop

