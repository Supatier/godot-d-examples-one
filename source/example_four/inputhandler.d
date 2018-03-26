module gdeo.examplefour.inputhandler;

import godot;
import godot.node;
import godot.input;

import GodotConsts = godot.globalconstants;

import gdeo.examplefour.kinematiccontroller;

class InputHandler : GodotScript!Node {
        @Method @Rename("_ready")
        void ready() {
                owner.setProcessInput(true);
                input = InputSingleton._GODOT_singleton();
                kinematicController = cast(KinematicController) owner.getNode(
                                "../KinematicController");
                print("Use W, A, S, D to move the red capsule!");
        }

        @Method @Rename("_process")
        void process(float deltaTime) {
                kinematicController.moveForward(input.isKeyPressed(GodotConsts.keyW));
                kinematicController.moveBackward(input.isKeyPressed(GodotConsts.keyS));
                kinematicController.moveLeft(input.isKeyPressed(GodotConsts.keyA));
                kinematicController.moveRight(input.isKeyPressed(GodotConsts.keyD));
        }

        private InputSingleton input;
        private KinematicController kinematicController;
}
