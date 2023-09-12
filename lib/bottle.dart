import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Bottle extends StatefulWidget {
  final String src;
  final String title;
  Bottle({super.key, required this.src, required this.title});

  @override
  State<Bottle> createState() => _BottleState();
}

class _BottleState extends State<Bottle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InteractiveViewer(
          scaleEnabled: true,
          scaleFactor: 150,
          panEnabled: true,
          child: ModelViewer(
            src: widget.src, // Path to your GLTF file in the assets folder
            alt: 'A 3D model', // Alt text (optional)
            autoRotate: true, // Auto-rotation (optional)
            cameraControls:
                true, // Enable user interaction (e.g., rotation, zooming) (optional)
            backgroundColor: Colors.white, // Background color (optional)
            autoPlay: true, // Auto-play the animation (optional)
          ),
        ),
      ),
    );
  }
}
