// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_3d_drawer/flutter_3d_drawer.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  DrawerControl drawerControl = DrawerControl();
  @override
  Widget build(BuildContext context) {
    return Flutter3dDrawer(
      controller: drawerControl,
      maxSlide: MediaQuery.of(context).size.width * 0.8,
      body: Scaffold(
        appBar: AppBar(
          title: Text("Watch"),
        ),
        body: Center(
          child: InteractiveViewer(
            scaleEnabled: true,
            scaleFactor: 150,
            panEnabled: true,
            child: ModelViewer(
              src:
                  'assets/bottle.gltf', // Path to your GLTF file in the assets folder
              alt: 'A 3D model', // Alt text (optional)
              //autoRotate: true, // Auto-rotation (optional)
              //cameraControls:true, // Enable user interaction (e.g., rotation, zooming) (optional)
              backgroundColor: Colors.black, // Background color (optional)
              //autoPlay: true, // Auto-play the animation (optional)
            ),
          ),
        ),
      ),
      drawer: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
        ),
        color: Colors.white54,
        child: Column(
          children: [
            ItemDrawer(
              title: "Home",
              icon: Icons.home_rounded,
              drawerControl: drawerControl,
            ),
            ItemDrawer(
              title: "History",
              icon: Icons.history_rounded,
              drawerControl: drawerControl,
            ),
            ItemDrawer(
              title: "Profile",
              icon: Icons.account_circle_rounded,
              drawerControl: drawerControl,
            ),
          ],
        ),
      ),
    );
  }
}

class ItemDrawer extends StatelessWidget {
  final IconData icon;
  final String title;
  final DrawerControl drawerControl;

  const ItemDrawer({
    Key? key,
    required this.icon,
    required this.title,
    required this.drawerControl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          drawerControl.close();
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Icon(icon),
              Container(
                margin: const EdgeInsets.only(left: 12),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
