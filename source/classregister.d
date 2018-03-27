module gdeo.classregister;

import godot;
import godot.c;

import gdeo.all;

import std.stdio;

mixin GodotNativeLibrary!("gdtest", MainScreenController, ReturnController,

                LifeCycle, InputHandling, GameObjectFactory, KinematicController, InputHandler);
