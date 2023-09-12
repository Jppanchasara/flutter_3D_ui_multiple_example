// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_3d_drawer/flutter_3d_drawer.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:ui/bottle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DrawerControl drawerControl = DrawerControl();
  @override
  Widget build(BuildContext context) {
    return Flutter3dDrawer(
      controller: drawerControl,
      backgroundColor: Color(0xfff5f5),
      maxSlide: MediaQuery.of(context).size.width * 0.75,
      body: Scaffold(
        appBar: AppBar(
          title: Text("GLTF Viewer"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: Text("Fash Wash"),
                  subtitle: Text("adgfsfgjlfsjfkjsfgsjkfsjksjfgsg"),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottle(
                              title: "Fash Wash",
                              src: "assets/bottle.gltf",
                            ),
                          ));
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Gitar"),
                  subtitle: Text("adgfsfgjlfsjfkjsfgsjkfsjksjfgsg"),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottle(
                              title: "Gitar",
                              src: "assets/gitar.glb",
                            ),
                          ));
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Man"),
                  subtitle: Text("adgfsfgjlfsjfkjsfgsjkfsjksjfgsg"),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottle(
                              title: "Man",
                              src: "assets/man.glb",
                            ),
                          ));
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Tank"),
                  subtitle: Text("adgfsfgjlfsjfkjsfgsjkfsjksjfgsg"),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottle(
                              title: "Tank",
                              src: "assets/Tank.glb",
                            ),
                          ));
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Soldier"),
                  subtitle: Text("adgfsfgjlfsjfkjsfgsjkfsjksjfgsg"),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottle(
                              title: "Solider",
                              src: "assets/Soldier.glb",
                            ),
                          ));
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Worker"),
                  subtitle: Text("adgfsfgjlfsjfkjsfgsjkfsjksjfgsg"),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottle(
                              title: "Worker",
                              src: "assets/Worker.glb",
                            ),
                          ));
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Worker"),
                  subtitle: Text("adgfsfgjlfsjfkjsfgsjkfsjksjfgsg"),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bottle(
                              title: "Worker",
                              src: "assets/Worker.glb",
                            ),
                          ));
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            ],
          ),
        ),
        // body: Center(
        //   child: InteractiveViewer(
        //     scaleEnabled: true,
        //     scaleFactor: 150,
        //     panEnabled: true,
        //     child: ModelViewer(
        //       src:
        //           'assets/Tank.glb', // Path to your GLTF file in the assets folder
        //       alt: 'A 3D model', // Alt text (optional)
        //       autoRotate: true, // Auto-rotation (optional)
        //       cameraControls:
        //           true, // Enable user interaction (e.g., rotation, zooming) (optional)
        //       backgroundColor: Colors.black, // Background color (optional)
        //       autoPlay: true, // Auto-play the animation (optional)
        //     ),
        //   ),
        // ),
      ),
      drawer: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
        ),
        color: Colors.white70,
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
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
