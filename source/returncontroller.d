module gdeo.returncontroller;

import godot;
import godot.node;
import godot.inputevent;
import godot.inputeventkey;

import GodotConsts = godot.globalconstants;

class ReturnController : GodotScript!Node {
        @Method @Rename("_ready")
        void ready() {
                owner.setProcessInput(true);
        }

        @Method @Rename("_input")
        void input(InputEvent event) {
                if (InputEventKey eventKey = cast(InputEventKey) event) {
                        if (eventKey.isPressed() && eventKey.getScancode() == GodotConsts.keyEscape)
                                owner.getTree().changeScene("res://scene/main_scene.tscn");
                }
        }
}
