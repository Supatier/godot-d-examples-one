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

        @Method @Rename("_on_example_one_button_pressed")
        void _onExampleOneButtonPressed() {
                getTree().changeScene("res://scene/life_cycle_scene.tscn");
                print("Life Cycle Scene loaded!");
        }

        @Method @Rename("_on_example_two_button_pressed")
        void _onExampleTwoButtonPressed() {
                getTree().changeScene("res://scene/input_handling_scene.tscn");
                print("Input Handling Scene loaded!");
        }

        @Method @Rename("_on_example_three_button_pressed")
        void _onExampleThreeButtonPressed() {
                getTree().changeScene("res://scene/basic_3d_physics_scene.tscn");
                print("Basic 3D Physics Scene loaded!");
        }

        @Method @Rename("_on_example_four_button_pressed")
        void _onExampleFourButtonPressed() {
                getTree().changeScene("res://scene/moving_kinematicbody_scene.tscn");
                print("Moving KinematicBody Scene loaded!");
        }
}
