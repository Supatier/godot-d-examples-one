module gdeo.mainscreencontroller;

import godot;
import godot.node;

import GodotConsts = godot.globalconstants;

class MainScreenController : GodotScript!Node {
        @Method @Rename("_ready")
        void ready() {
                print("Main Screen Controller is ready!");
        }

        @Method void onExampleOneButtonPressed() {
                owner.getTree().changeScene("res://scene/life_cycle_scene.tscn");
                print("Life Cycle Scene loaded!");
        }

        @Method void onExampleTwoButtonPressed() {
                owner.getTree().changeScene("res://scene/input_handling_scene.tscn");
                print("Input Handling Scene loaded!");
        }

        @Method void onExampleThreeButtonPressed() {
                owner.getTree().changeScene("res://scene/basic_3d_physics_scene.tscn");
                print("Basic 3D Physics Scene loaded!");
        }

        @Method void onExampleFourButtonPressed() {
                owner.getTree().changeScene("res://scene/moving_kinematicbody_scene.tscn");
                print("Moving KinematicBody Scene loaded!");
        }
}
