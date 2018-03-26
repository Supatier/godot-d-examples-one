module gdeo.exampletwo.inputhandling;

import godot;
import godot.core.string;
import godot.node;
import godot.richtextlabel;

import godot.inputevent;
import godot.inputeventkey;
import godot.inputeventjoypadbutton;

import GodotConsts = godot.globalconstants;

import std.conv;

class InputHandling : GodotScript!Node {
        @Method void _ready() {
                owner.setProcessInput(true);
                messagesRTL = cast(RichTextLabel) owner.getNode("../Panel/MessagesRTL");
                messagesRTL.setBbcode("Press key board keys or joystick buttons: \n\n");
        }

        @Method @Rename("_input")
        void input(InputEvent event) {
                if (InputEventKey eventKey = cast(InputEventKey) event) {
                        if (eventKey.isPressed()) {
                                String text = text("Pressed keyboard key: ",
                                                eventKey.getScancode(), "\n");
                                messagesRTL.addText(text);
                        }

                        return;
                }

                if (InputEventJoypadButton eventJoyButton = cast(InputEventJoypadButton) event) {
                        if (eventJoyButton.isPressed()) {
                                String text = text("Pressed joypad button: ",
                                                eventJoyButton.getButtonIndex(), "\n");
                                messagesRTL.addText(text);
                        }
                }
        }

        private RichTextLabel messagesRTL;
}
