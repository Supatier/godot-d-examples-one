module gdeo.examplethree.gameobjectfactory;

import godot;
import godot.node;
import godot.spatial;
import godot.resource;
import godot.packedscene;
import godot.resourceloader;
import godot.os;

import godot.core.vector3;

import std.random;
import std.conv;

public class GameObjectFactory : GodotScript!Node {
        @Method @Rename("_ready")
        public void ready() {
                owner.setProcess(true);

                resourceLoader = ResourceLoaderSingleton._GODOT_singleton();
                os = OSSingleton._GODOT_singleton();

                sphereResource = cast(PackedScene) resourceLoader.load(
                                "res://game_object/basic_object/sphere.tscn");
                cubeResource = cast(PackedScene) resourceLoader.load(
                                "res://game_object/basic_object/cube.tscn");
                capsuleResource = cast(PackedScene) resourceLoader.load(
                                "res://game_object/basic_object/capsule.tscn");
        }

        @Method @Rename("_process")
        public void process(float deltaTime) {
                int actualTime = cast(int) os.getUnixTime();

                if (lastRespawnTime < actualTime) {
                        lastRespawnTime = actualTime;
                        uint objectType = uniform!uint() % 3;
                        Spatial basicObject;

                        switch (objectType) {
                        case 0:
                        default:
                                basicObject = cast(Spatial) sphereResource.instance();
                                break;

                        case 1:
                                basicObject = cast(Spatial) cubeResource.instance();
                                break;

                        case 2:
                                basicObject = cast(Spatial) capsuleResource.instance();
                                break;
                        }

                        int x = (cast(int) objectType * 2) - 2;
                        Vector3 translation = Vector3(x, 3, 0);
                        basicObject.translate(translation);
                        owner.getTree().getRoot().addChild(basicObject);
                }
        }

        private OSSingleton os;
        private ResourceLoaderSingleton resourceLoader;

        private PackedScene sphereResource;
        private PackedScene cubeResource;
        private PackedScene capsuleResource;

        private int lastRespawnTime;
}
