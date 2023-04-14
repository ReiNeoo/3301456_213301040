import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import '../../Widgets/NavigationBar.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(PageAppBarTitle.LikesTitle),),
      body: Center(child: Text("Beğenilen Yemek Tarifleri")),
      bottomNavigationBar: ProjectNavigationBar(),
    );
  }
}