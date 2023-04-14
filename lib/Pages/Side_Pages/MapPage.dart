import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Widgets/NavigationBar.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Map Sayfası"),),
      bottomNavigationBar: ProjectNavigationBar(),
    );
  }
}