module gdeo.mainscreencontroller;

import godot;
import godot.node;

import GodotConsts = godot.globalconstants;

class MainScreenController : GodotScript!Node {
        alias owner this;
        @Method @Rename("_ready")
        void ready() {
                print("Main Screen Controller is ready!");
        }

        @Method void _on_ExampleOneButton_pressed() {
                this.getTree().changeScene("res://scene/life_cycle_scene.tscn");
                print("Life Cycle Scene loaded!");
        }

        @Method void onExampleTwoButtonPressed() {
                this.getTree().changeScene("res://scene/input_handling_scene.tscn");
                print("Input Handling Scene loaded!");
        }

        @Method void onExampleThreeButtonPressed() {
                this.getTree().changeScene("res://scene/basic_3d_physics_scene.tscn");
                print("Basic 3D Physics Scene loaded!");
        }

        @Method void onExampleFourButtonPressed() {
                this.getTree().changeScene("res://scene/moving_kinematicbody_scene.tscn");
                print("Moving KinematicBody Scene loaded!");
        }
}
